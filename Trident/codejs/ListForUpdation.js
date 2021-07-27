function GridBindCRO() {

    $.ajax({
        type: 'POST',
        url: '../ClientUI/ChallanListForUpdation.aspx/GetListForUpdation',
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
                '<th style="text-align:center" class="hidden" valign="top" style="width:50px;" scope="col">Id</th>' +
                '<th style="text-align:left" valign="top" style="width:50px;" scope="col">Sr No.</th>' +
                '<th style="text-align:left" valign="top" style="width:60px;" scope="col">Challan No</th>' +
                '<th style="text-align:left" valign="top" style="width:80px;" scope="col">License Plate</th>' +
                '<th style="text-align:left" valign="top" style="width:120px;" scope="col">Comment</th></tr></thead>';

    var rows = '';
    for (var i = 0; i < data.length; i++) {
        rows = rows +
                    '<tbody>' + '<tr onclick="EditRowSelect(' + data[i].Id + ')">' +
                    '<td align="left" class="hidden" valign="top" style="width:50px;"><label id="lblId_' + i + '">' + data[i].Id + '</label></td>' +
                    '<td align="left" valign="top" style="width:50px;">' + data[i].SrNo + '</td>' +
                    '<td align="left" valign="top" style="width:60px;">' + data[i].ChallanNo + '</td>' +
                    '<td align="left" valign="top" style="width:80px;">' + data[i].VehiclePlateNo + '</td>' +
                    '<td align="center" valign="top" style="width:20px;">' + data[i].ReturnComment + '</td>' +
                    '</tr>';
    }
    gvUnit = header + rows + '</tbody></table>';
    $("#divCRODashboard").empty().append(gvUnit);
    //$(function () {
    //    $('input#search').quicksearch('table#gvCRODashboard tbody tr');
    //})
}

function EditRowSelect(JsonFilePath) {
    window.location.href = "../ClientUI/EditCROChallan.aspx?FinalString=" + JsonFilePath;
}