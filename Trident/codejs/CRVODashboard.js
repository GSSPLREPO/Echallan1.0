function GridBindCRVO() {

    $.ajax({
        type: 'POST',
        url: '../ClientUI/CRVODashboard.aspx/GetCRVODashboard',
        data: '{HeadOfficeId:' + $('input[id$=hdnHeadOfficeId]').val() + '}',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            if (data.d != null) {
                data = $.parseJSON(data.d);
                BindCRVODashboard(data);
            } else {
                alert('No data found');
            }
        }, failure: function (response) {
            alert('Opps!Something went Wrong.Contact Your Administrator.');
        }
    });
}

function chkHeaderChange() {
    if ($('#chkHeader').is(":checked")) {
        $('[id*=chkChild_]').prop("checked", true);
    }
    else if ($('#chkHeader').is(":not(:checked)")) {
        $('[id*=chkChild_]').prop("checked", false);
    }
};

function chkChildChange(dataCount) {
    var chkCount = $('[id*=chkChild_]:checked').length;
    if (chkCount == dataCount) {
        $('#chkHeader').prop("checked", true);
    } else {
        $('#chkHeader').prop("checked", false);
    }
};

$('#btnApprove').click(function (e) {
    var id = '';
    var hfId = '';
    var challanId = '';
    var challanNo = '';
    var selectedImgSource = '';
    var counter = 0;

    $("[id*=gvCRVO] tr:has(td)").each(function (i) {
        var row = $(this).closest('tr');

        if (row.find("input[id*=chkChild_]").is(':checked')) {
            id = (id.length > 0) ? (id + ', ' + row.find('td').eq(1).text()) : row.find('td').eq(1).text();
            hfId = '#hf' + i.toString();
            challanId = '#lblId_' + i;
            challanNo = '#lblChallanNo_' + i;
            selectedImgSource = (selectedImgSource.length > 0) ? (selectedImgSource + ', ' + $(hfId).val()) : $(hfId).val();
            counter++;
        }
    });
    if (counter > 0) {
        $.ajax({
            type: 'POST',
            url: '../ClientUI/CRVODashboard.aspx/UpdateApproveMultiple',
            data: '{challanId:' + JSON.stringify(id) + ", " + 'selectedImgSource:' + JSON.stringify(selectedImgSource) + "}",
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (data) {
                //alert(data.d);
                if (data.d != null) {
                    //data = $.parseJSON(data.d);
                    alert(data.d);
                    GridBindCRVO();
                } else {
                    alert('No data found');
                }
            }, failure: function (response) {
                alert('Opps!Something went Wrong.Contact Your Administrator.');
            }
        });
    }
});

function BindCRVODashboard(data) {
    var gvUnit = '';
    var header = '<table id="gvCRVO" class="table table-striped table-bordered" cellspacing="0" cellpadding="4" border="3" style="border-collapse:collapse;" rules="all">' +
                '<thead><tr style="background-color:WhiteSmoke;">' +
                '<th style="text-align:center" valign="top" style="width:50px;" scope="col"><input type="checkbox" style="display: block !important" id="chkHeader" onchange="chkHeaderChange();" /></th>' +
                '<th style="text-align:center" class="hidden" valign="top" style="width:50px;" scope="col">Id</th>' +
                '<th style="text-align:center" valign="top" style="width:125px;" scope="col">Challan DateTime</th>' +
                '<th style="text-align:center" valign="top" style="width:100px;" scope="col">Challan No.</th>' +
                '<th style="text-align:center" valign="top" style="width:150px;" scope="col">License Plate</th>' +
                '<th style="text-align:center" valign="top" style="width:150px;" scope="col">Context Image</th>' +
                '<th style="text-align:center" valign="top" style="width:320px;" scope="col">Screen Shots</th>' +
                '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Plate No</th>' +
                '<th style="text-align:center" valign="top" style="width:180px;" scope="col">Offender Name</th>' +
                '<th style="text-align:center" valign="top" style="width:225px;" scope="col">Offender Address</th>' +
                '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Vehicle Type</th>' +
                '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Vehicle Model</th>' +
                '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Vehicle Make</th>' +
                '<th style="text-align:center" valign="top" style="width:280px;" scope="col">Offenses | Applicable Section | Amount</th>' +
                '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Total Amount</th>' +
                '<th style="text-align:center" valign="top" style="width:125px;" scope="col">Violation DateTime</th>' +
                '<th style="text-align:center" valign="top" style="width:125px;" scope="col">Due Date</th>' +
                '<th style="text-align:center" valign="top" style="width:80px;" scope="col">No Of Violations</th>' +
                '<th style="text-align:center" valign="top" style="width:280px;" scope="col">Updation/Cancellation Comment</th>' +
                '<th style="text-align:center" valign="top" style="width:280px;" scope="col">Action</th>' +
                '</tr></thead>';

    var rows = '';
    var dataCount = data.length;
    for (var i = 0; i < data.length; i++) {
        var ScreenShots = data[i].ViolationScreenShots;
        var ScreenShotPath = ScreenShots.split('^');
        var count = ScreenShotPath.length;
        var img = "<ul>";
        //var dvId = '#dvScreenshots' + i;
        var selected = data[i].SelectedSnapPath;


        for (var a = 0; a < count; a++) {
            var currentPath = ScreenShotPath[a].replace("&", "\\").replace("&", "\\");

            var id = (ScreenShotPath[a].split("\\")[2].split('.')[0]);//.split('\\')[2].split('.')[0];
            if (selected != currentPath) {
                img = img + ' ' + '<li><input type="checkbox" id="chk' + id + '"><label id="lbl' + id + '" for="chk' + id + '"><img id="' + id + '" src="' + ScreenShotPath[a] + '" alt="Screen Shots" width="130px" height = "120px" style="padding:7px" onclick="imgOnClick(this, ' + i + ')" /></label></li>';
            } else {
                img = img + ' ' + '<li><input type="checkbox" id="chk' + id + '"><label id="lbl' + id + '" for="chk' + id + '" class="lblChecked"><img id="' + id + '" src="' + ScreenShotPath[a] + '" alt="Screen Shots" width="130px" height = "120px" style="padding:7px" onclick="imgOnClick(this, ' + i + ')" /></label></li>';
                var hfId = '#hf' + id.toString();
                $(hfId).val(ScreenShotPath[a]);
            }
        }
        img = img + '</ul><input value="' + selected + '" type="hidden" id="hf' + i + '">';

        rows = rows + '<tbody>' + '<tr>' +
               '<td style="text-align:center" valign="top" style="width:50px;" scope="col"><input type="checkbox" style="display: block !important" id="chkChild_' + data[i].Id + '" onchange="chkChildChange(' + dataCount + ');" /></td>' +
               '<td align="left" class="hidden" valign="top" style="width:50px;"><label id="lblId_' + i + '">' + data[i].Id + '</label></td>' +
               '<td align="center" valign="top" style="min-width:125px;">' + data[i].ChallanDateTime + '</td>' +
               '<td align="center" valign="top" style="min-width:100px;"><label id="lblChallanNo_' + i + '">' + data[i].ChallanNo + '</label></td>' +
               '<td align="center" valign="top" style="min-width:150px;"><img src=' + data[i].LPImage + ' id="imgLP" alt="" width="130px" height="120px" style="height:auto;cursor:pointer;" /></td>' +
               '<td align="center" valign="top" style="min-width:150px;"><img src=' + data[i].ContextImagePath + ' id="imgCI" alt="" width="130px" height="120px" style="height:auto;cursor:pointer;" /></td>' +
               '<td align="left" valign="top" style="min-width:350px;">' + img + '</td>' +
               '<td align="center" valign="top" style="min-width:80px;">' + data[i].VehiclePlateNo + '</td>' +
               '<td align="left" valign="top" style="min-width:300px;">' + data[i].OffenderName + '</td>' +
               '<td align="left" valign="top" style="min-width:325px;">' + data[i].OffenderAddress + '</td>' +
               '<td align="left" valign="top" style="min-width:80px;">' + data[i].VehicleType + '</td>' +
               '<td align="left" valign="top" style="min-width:80px;">' + data[i].VehicleModel + '</td>' +
               '<td align="left" valign="top" style="min-width:80px;">' + data[i].VehicleMake + '</td>' +
               '<td align="left" valign="top" style="min-width:280px;">' + data[i].Offenses + '</td>' +
               '<td align="right" valign="top" style="min-width:80px;">' + data[i].TotalAmount + '</td>' +
               '<td align="center" valign="top" style="min-width:200px;">' + data[i].ViolationDateTime + '</td>' +
               '<td align="center" valign="top" style="min-width:200px;">' + data[i].DueDate + '</td>' +
               '<td align="right" valign="top" style="min-width:80px;">' + data[i].NoOfVilations + '</td>' +
               '<td align="center" valign="top" style="min-width:280px;"><textarea rows="2" cols="20" id="txtComment_' + i + '" class="form-control" style="min-height: 100px;max-height: 100px;height: 100px;min-width:270px;max-width:270px;width:270px;"></textarea></td>' +
               '<td align="center" valign="middle" style="min-width:350px;"><button id="btnApprove_' + i + '" type="button" onclick="Approved(this.id,' + i + ')" class="btn btn-primary">Approve</button>&nbsp;&nbsp;&nbsp;<button id="btnCancel_' + i + '" type="button"  onclick="Cancelled(this.id)" class="btn btn-primary">Cancel</button>&nbsp;&nbsp;&nbsp;<button id="btnUpdate_' + i + '" type="button"  onclick="Update(this.id,' + i + ')" class="btn btn-primary">Send for Updation</button></td>' +
               '</tr>';
    }
    gvUnit = header + rows + '</tbody></table>';
    $("#divCRVODashboard").empty().append(gvUnit);
}

function imgOnClick(id, index) {
    var hfId = '#hf' + index.toString();
    var imgSrc = $(id).attr('src');
    $(hfId).val(imgSrc);
    var idlbl = $(id).attr('id').split('_ss')[0];
    $('[id*=lbl' + idlbl + ']').removeClass();
    var a = $(id).closest('label').attr('class', 'lblChecked');
}

function Approved(id, i) {
    var index = id.split('_')[1];
    var hfId = '#hf' + index.toString();
    var challanId = '#lblId_' + index;
    var challanNo = '#lblChallanNo_' + index;
    var selectedImgSource = $(hfId).val();
    if (selectedImgSource != '' && selectedImgSource != null) {
        challanId = $(challanId).text();
        challanNo = $(challanNo).text();


        //alert(challanNo);
        $.ajax({
            type: 'POST',
            url: '../ClientUI/CRVODashboard.aspx/UpdateApprove',
            data: '{challanId:' + challanId + ", " + 'challanNo:' + JSON.stringify(challanNo) + ", " + 'selectedImgSource:' + JSON.stringify(selectedImgSource) + "}",
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (data) {
                //alert(data.d);
                if (data.d != null) {
                    //data = $.parseJSON(data.d);
                    alert(data.d);
                    GridBindCRVO();
                } else {
                    alert('No data found');
                }
            }, failure: function (response) {
                alert('Opps!Something went Wrong.Contact Your Administrator.');
            }
        });
    } else {
        alert('Please Select atlease one screenshot');
    }
}

function Cancelled(id) {
    var index = id.split('_')[1];
    var challanId = '#lblId_' + index;
    var challanNo = '#lblChallanNo_' + index;
    var comment = '#txtComment_' + index;
    //alert(challanNo);

    challanId = $(challanId).text();
    challanNo = $(challanNo).text();
    comment = $(comment).val();
    //alert(challanNo);
    if (comment != null && comment != '') {
        $.ajax({
            type: 'POST',
            url: '../ClientUI/CRVODashboard.aspx/UpdateCancel',
            data: '{challanId:' + challanId + ", " + 'challanNo:' + JSON.stringify(challanNo) + ", " + 'Comment:' + JSON.stringify(comment) + "}",
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (data) {
                //alert(data.d);
                if (data.d != null) {
                    //data = $.parseJSON(data.d);
                    alert(data.d);
                    GridBindCRVO();
                } else {
                    alert('No data found');
                }
            }, failure: function (response) {
                alert('Opps!Something went Wrong.Contact Your Administrator.');
            }
        });
    } else {
        alert('Updation Comment is required.')
    }
}

function Update(id, i) {
    var index = id.split('_')[1];
    var hfId = '#hf' + index.toString();
    var challanId = '#lblId_' + index;
    var challanNo = '#lblChallanNo_' + index;
    var comment = '#txtComment_' + index;
    //alert(challanNo);

    challanId = $(challanId).text();
    challanNo = $(challanNo).text();
    comment = $(comment).val();
    var selectedImgSource = $(hfId).val();
    if (selectedImgSource != '' && selectedImgSource != null) {

        if (comment != null && comment != '') {
            //alert(challanNo);
            $.ajax({
                type: 'POST',
                url: '../ClientUI/CRVODashboard.aspx/Update',
                data: '{challanId:' + challanId + ", " + 'challanNo:' + JSON.stringify(challanNo) + ", " + 'Comment:' + JSON.stringify(comment) + ", " + 'selectedImgSource:' + JSON.stringify(selectedImgSource) + "}",
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (data) {
                    //alert(data.d);
                    if (data.d != null) {
                        //data = $.parseJSON(data.d);
                        alert(data.d);
                        GridBindCRVO();
                    } else {
                        alert('No data found');
                    }
                }, failure: function (response) {
                    alert('Opps!Something went Wrong.Contact Your Administrator.');
                }
            });
        } else {
            alert('Updation Comment is required.')
        }
    } else {
        alert('Please Select atlease one screenshot');
    }
}