/// <reference path="D:\Projects\TRIDENT(E-CHALLAN)\Branch\Source\Trident\Trident\ClientUI/CROChallan.aspx" />
/// <reference path="D:\Projects\TRIDENT(E-CHALLAN)\Branch\Source\Trident\Trident\ClientUI/CROChallan.aspx" />
/// <reference path="D:\Projects\TRIDENT(E-CHALLAN)\Branch\Source\Trident\Trident\ClientUI/CROChallan.aspx" />

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
    var header = '<table id="gvCRODashboard" class="table table-striped table-bordered" cellspacing="0" cellpadding="4" border="3" style="border-collapse:collapse;" rules="all">' +
                '<thead><tr style="background-color:WhiteSmoke;">' +
                //'<th style="text-align:left" valign="top" style="width:50px;" scope="col">Sr No.</th>' +
                '<th style="text-align:left" valign="top" style="width:60px;" scope="col">Violation Date</th>' +
                '<th style="text-align:left" valign="top" style="width:80px;" scope="col">License Plate</th>' +
                '<th style="text-align:left" valign="top" style="width:120px;" scope="col">Plate Image</th></tr></thead>';

    var rows = '';
    for (var i = 0; i < data.Result.length; i++) {
        rows = rows +
                    '<tbody>' + '<tr onclick="EditRowSelect(' + data.Result[i].FinalString.replace(/\\/g, "\\\\") + ')">' +
                    //'<td align="left" valign="top" style="width:50px;">' + data.Result[i].SRNo + '</td>' +
                    '<td align="left" valign="top" style="width:60px;">' + data.Result[i].DateTime + '</td>' +
                    '<td align="left" valign="top" style="width:80px;">' + data.Result[i].LPlate + '</td>' +
                    '<td align="center" valign="top" style="width:20px;"><img src=' + data.Result[i].LPImage + ' Id="id" alt="" width="100px" height="100px" style="height:auto;cursor:pointer;" onclick="EditRowSelect(' + data.Result[i].FinalString.replace(/\\/g, "\\\\") + ')"></td>' +
                    '</tr>';
    }
    gvUnit = header + rows + '</tbody></table>';
    $("#divCRODashboard").empty().append(gvUnit);
    $(function () {
        $('input#search').quicksearch('table#gvCRODashboard tbody tr');
    })
}

function EditRowSelect(JsonFilePath) {
    window.location.href = "../ClientUI/CROChallan.aspx?FinalString=" + JsonFilePath;
}