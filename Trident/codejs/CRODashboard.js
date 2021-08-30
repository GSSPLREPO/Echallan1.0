/// <reference path="D:\Projects\TRIDENT(E-CHALLAN)\Branch\Source\Trident\Trident\ClientUI/CROChallan.aspx" />
/// <reference path="D:\Projects\TRIDENT(E-CHALLAN)\Branch\Source\Trident\Trident\ClientUI/CROChallan.aspx" />
/// <reference path="D:\Projects\TRIDENT(E-CHALLAN)\Branch\Source\Trident\Trident\ClientUI/CROChallan.aspx" />

//$('#chckCheckAll').click(function (e) {
//    alert('hi');
//    var table = $(e.target).closest('#gvCRODashboard');
//    $('td input:checkbox', table).prop('checked', this.checked);
//});

$(document).ready(function () {
    GridBindCRO();
});


function CheckAll() {
    $('#chckCheckAll').click(function (e) {
        var table = $(e.target).closest('#gvCRODashboard');
        $('td input:checkbox', table).prop('checked', this.checked);
    });
}

function GridBindCRO() {

    $.ajax({
        type: 'POST',
        url: '../ClientUI/CRODashboard.aspx/GetCRODashboard',
        data: '{OrganisationId:' + $('input[id$=hfOrganisationId]').val() + '}',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            if (data.d[0] != null) {
                data = $.parseJSON(data.d);
                BindCRO(data);
            }
        }, failure: function (response) {
            alert('Opps!Something went Wrong.Contact Your Administrator.');
        }
    });
}

function BindCRO(data) {
    var gvUnit = '';
    var header = '<table id="gvCRODashboard"  class="table table-striped table-bordered" cellspacing="0" cellpadding="4" border="3" style="border-collapse:collapse;" rules="all">' +
        '<thead><tr style="background-color:WhiteSmoke;">' +
        //'<th style="text-align:left" valign="top" style="width:50px;" scope="col">Sr No.</th>' +
        '<th style="text-align:left" valign="top" style="width:60px;" scope="col">Violation Date</th>' +
        '<th style="text-align:left" valign="top" style="width:80px;" scope="col">License Plate</th>' +
        '<th style="text-align:left" valign="top" style="width:120px;" scope="col">Plate Image</th>' +
        '<th style="text-align:left" valign="top" style="width:60px;" scope="col"> <input type="checkbox" id="chckCheckAll" onclick="CheckAll()" /> Selection</th>' + '</tr ></thead > ';

    var rows = '';
    for (var i = 0; i < data.Result.length; i++) {
        rows = rows +
            //'<tbody>' + '<tr onclick="EditRowSelect(' + data.Result[i].FinalString.replace(/\\/g, "\\\\") + ')">' +
            '<tbody>' + '<tr>' +
            //'<td align="left" valign="top" style="width:50px;">' + data.Result[i].SRNo + '</td>' +
            '<td align="left" valign="top" style="width:20%;">' + data.Result[i].DateTime + '</td>' +
            '<td align="left" valign="top" style="width:30%;">' + data.Result[i].LPlate + '</td>' +
            '<td align="center" valign="top" style="width:30%;"><img src=' + data.Result[i].LPImage + ' Id="id" alt="" width="100px" height="100px" style="height:auto;cursor:pointer;" onclick="EditRowSelect(' + data.Result[i].FinalString.replace(/\\/g, "\\\\") + ')"></td>' +
            '<td align="center" valign="top" style="width:20%;"><input type="checkbox" id="IsChecked_' + i + '"></td>' +
            '<td align="left" valign="top" style="width:1%; display:none;">' + data.Result[i].FinalString.replace(/\\/g, "\\\\").split('$')[6] + '</td>' +
            '<td align="left" valign="top" style="width:1%; display:none;">' + data.Result[i].FinalString.split('$')[4] + '</td>' +
            '<td align="left" valign="top" style="width:1%; display:none;">' + data.Result[i].ContextImage + '</td>' +
            '</tr>';
    }
    gvUnit = header + rows + '</tbody></table>';
    $("#divCRODashboard").empty().append(gvUnit);
    $(function () {
        $('input#search').quicksearch('table#gvCRODashboard tbody tr');
    });
}


$("#saveEchallan").click(function (e) {
    var ChallanDataBO = new Array();
    var cnt = 0;
    $("#gvCRODashboard TBODY TR").each(function () {
        var row = $(this);
        if (row.find('td:eq(3) input').is(':checked') === true) {
            cnt += 1;
        }
    });

    if (cnt === 0) {
        alert("Please select checkbox first before submit.");
        return;
    }

    $("#gvCRODashboard TBODY TR").each(function () {
        var row = $(this);
        var Data = {};

        var Datachk = row.find('td:eq(3) input').is(':checked');

        //Data.Chacked = Datachk;

        //alert();
        if (Datachk === true) {
            //FixedReader.SrNo = row.find("TD").eq(0).html();
            Data.ViolationDateTime = row.find("TD").eq(0).html();
            Data.VehiclePlateNo = row.find("TD").eq(1).html();
            //Data.FixReaderCode = row.find("TD").eq(3).html();
            Data.LPImage = row.find("TD").eq(2).html();
            Data.JsonFilePath = row.find("TD").eq(4).html();
            Data.CameraName = row.find("TD").eq(5).html();
            Data.ContextImage = row.find("TD").eq(6).html();
            ChallanDataBO.push(Data);
        }
    });
    $.ajax({
        type: 'Post',
        url: '../ClientUI/CRODashboard.aspx/InsertAPIData',
       //data: '{Id:' + $('input[id$=hfOrganisationId]').val() + '}',
        //data: JSON.stringify(ChallanDataBO),
        data: '{objData:' + JSON.stringify(ChallanDataBO) + '}',
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        success: function (data) {
            if (data.d[0] != null) {
                if ($.parseJSON(data.d) == "success") {
                    location.reload();
                } else {
                    alert(data.d);
                }
                //data = $.parseJSON(data.d);
                //BindCRO(data);
            }
        }, failure: function (response) {
            alert('Opps!Something went Wrong.Contact Your Administrator.');
        }
    });
});


function EditRowSelect(JsonFilePath) {
    window.location.href = "../ClientUI/CROChallan.aspx?FinalString=" + JsonFilePath;
}