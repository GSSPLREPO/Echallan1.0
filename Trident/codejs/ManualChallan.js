//function addImages(screenShots, Count) {
//    var ScreenShotPath = screenShots.split('^');
//    var vrul = $('<ul />').appendTo('#dvScreenshots');
//    for (var a = 0; a < Count; a++) {
//        var vrli = $('<li />').appendTo(vrul);

//        var id = ScreenShotPath[a].split("&")[2];//.split('\\')[2].split('.')[0];
//        var imgId = '#' + id;
//        var chkbox = $('<input />').attr({
//            'id': 'chk' + id,
//            'type': 'checkbox'
//        }).appendTo(vrli);

//        var lbl = $('<label />').attr({
//            'id': 'lbl' + id,
//            'for': 'chk' + id,
//            'class': 'lbl'
//        }).appendTo(vrli);

//        //$('#mybutton').click(function() {
//        var img = $('<img />').attr({
//            'id': id,
//            'src': '' + ScreenShotPath[a].replace("&", "\\").replace("&", "\\") + '',
//            'alt': 'Screen Shots',
//            'title': 'Screen Shots',
//            'width': 130,
//            'height': 120,
//            'class': 'tile',
//            'style': 'padding:5px',
//            'onclick': 'imgOnClick(this)'
//        }).appendTo(lbl);
//    }
//}

//function imgOnClick(id) {
//    $('[id*=lbl]').removeClass();
//    var a = $(id).closest('label').attr('class', 'lblChecked');
//}

function readURL(input, imgId) {

    //alert(extension);
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $(imgId).attr('src', e.target.result);
            var strImageBase64 = e.target.result.split(',');
            //alert(strImageBase64[1]);
            switch (imgId) {
                case "#imgPlate":
                    $("#hdnPlateImage").val(strImageBase64[1]);
                    break;
                case "#imgContextImage":
                    $("#hdnContextImage").val(strImageBase64[1]);
                    break;
                case "#imgScreenShots":
                    $("#hdnScreenShot").val(strImageBase64[1]);
                    break;
                default:
                    break;
            }
        }

        reader.readAsDataURL(input.files[0]);
    }
}

function checkExtension(input, imgId) {
    if (input.files && input.files[0]) {
        var extension = input.files[0]["name"].split('.').pop();
        switch (extension) {
            case "jpg":
            case "Jpg":
            case "JPG":
            case "jpeg":
            case "Jpeg":
            case "JPEG":
            case "png":
            case "PNG":
            case "Png":
            case "gif":
            case "GIF":
            case "Gif":
                return true;
            default:
                return false;
        }
    } else {
        switch (imgId) {
            case "#imgPlate":
                $("#hdnPlateImage").val('');
                break;
            case "#imgContextImage":
                $("#hdnContextImage").val('');
                break;
            case "#imgScreenShots":
                $("#hdnScreenShot").val('');
                break;
            default:
                break;
        }
        
        $(imgId).removeAttr("src");
        return false;
    }
}

$("#FUPlate").change(function () {

    if (checkExtension(this, "#imgPlate")) {
        readURL(this, "#imgPlate");
        $("#FUPlate").next($('span')).text('');
    }
    else {
        $("#FUPlate").next($('span')).text('Only .jpg,.png,.jpeg,.gif Files are allowed');
    }

});

$("#FUContextImage").change(function () {
    
    if (checkExtension(this, "#imgContextImage")) {
        readURL(this, "#imgContextImage");
        $("#FUContextImage").next($('span')).text('');
    }
    else {
        $("#FUContextImage").next($('span')).text('Only .jpg,.png,.jpeg,.gif Files are allowed');
    }
});

$("#FUScreenShots").change(function () {
    if (checkExtension(this, "#imgScreenShots")) {
        readURL(this, "#imgScreenShots");
        $("#FUScreenShots").next($('span')).text('');
    }
    else {
        $("#FUScreenShots").next($('span')).text('Only .jpg,.png,.jpeg,.gif Files are allowed');
    }
});

$('[id*=ddlOffense]').change(function () {
    var id = $(this).val();
    var splitVal = id.split('_');
    if (id != '-1') {
        $('[id*=hdnOffense]').val(splitVal[0]);
        $('[id*=txtAmount]').val(parseInt(splitVal[1]));
        $('[id*=hdnMVActs]').val(splitVal[2]);
        $('[id*=txtMVActs]').val(splitVal[3]);
    } else {
        ClearForm();
    }

});

function ClearForm() {
    $('[id*=hdnOffense]').val('');
    $('[id*=txtAmount]').val('');
    $('[id*=hdnMVActs]').val('');
    $('[id*=txtMVActs]').val('');
}

$('[id*=btnAddOffense]').click(function (e) {
    $("#loadingDiv").show();
    if (OffenseValidation()) {
        var cnt = $("[id*=gvOffenses] tr:has(td)").length;
        var validCount = $("[id*=gvOffenses] tr > td:contains(" + $("[id*=ddlOffense] option:selected").text() + ")").length;
        if (validCount == 0) {
            if (cnt == 0) {
                var gvUnit = '';
                var header = '<table id="gvOffenses" class="table table-striped table-bordered" cellspacing="0" cellpadding="4" border="3" style="border-collapse:collapse;" rules="all">' +
                            '<thead><tr style="background-color:WhiteSmoke;">' +
                            '<th style="text-align:center" class="hidden" valign="top" style="width:50px;" scope="col">Ids</th>' +
                            '<th style="text-align:center" valign="top" style="width:50px;" scope="col">Offense Desc</th>' +
                            '<th style="text-align:center" valign="top" style="width:60px;" scope="col">Applicable Section</th>' +
                            '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Amount</th>' +
                            '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Delete</th>' +
                            '</tr></thead>';

                var rows = '';
                //for (var i = 0; i < data.length; i++) {
                rows = '<tbody>' + '<tr id="tr_' + (cnt + 1).toString() + '">' +
                       '<td align="left" class="hidden" valign="top" style="width:50px;">' + $('[id*=hdnOffense]').val() + '_' + $('[id*=hdnMVActs]').val() + '</td>' +
                       '<td align="left" valign="top" style="width:50px;">' + $("[id*=ddlOffense] option:selected").text() + '</td>' +
                       '<td align="left" valign="top" style="width:60px;">' + $('[id*=txtMVActs]').val() + '</td>' +
                       '<td align="right" valign="top" style="width:80px;">' + $('[id*=txtAmount]').val() + '</td>' +
                       '<td align="center" valign="top" style="width:20px;"><img src="../images/Delete.png" Id="id" alt="" style="height:auto;cursor:pointer;" onclick="DeleteRowSelect(tr_' + (cnt + 1).toString() + ',' + $('[id*=txtAmount]').val() + ')"></td>' +
                       '</tr>';
                //}
                gvUnit = header + rows + '</tbody></table>';
                $("#divListOfOffenses").append(gvUnit);

            } else {
                var row = '';
                //for (var i = 0; i < data.length; i++) {
                row = '<tr id="tr_' + (cnt + 1).toString() + '">' +
                       '<td align="left" class="hidden" valign="top" style="width:50px;">' + $('[id*=hdnOffense]').val() + '_' + $('[id*=hdnMVActs]').val() + '</td>' +
                       '<td align="left" valign="top" style="width:50px;">' + $("[id*=ddlOffense] option:selected").text() + '</td>' +
                       '<td align="left" valign="top" style="width:60px;">' + $('[id*=txtMVActs]').val() + '</td>' +
                       '<td align="right" valign="top" style="width:80px;">' + $('[id*=txtAmount]').val() + '</td>' +
                       '<td align="center" valign="top" style="width:20px;"><img src="../images/Delete.png" Id="id" alt="" style="height:auto;cursor:pointer;" onclick="DeleteRowSelect(tr_' + (cnt + 1).toString() + ',' + $('[id*=txtAmount]').val() + ')"></td>' +
                       '</tr>';
                //}
                //row = header + rows + '</tbody></table>';
                $("[id*=gvOffenses]").append(row);
            }
            var pendingAmount = parseInt($('[id*=hdnTotalPendingAmount]').val() != '' ? $('[id*=hdnTotalPendingAmount]').val() : '0') + parseInt($('[id*=txtAmount]').val());
            $('[id*=hdnTotalPendingAmount]').val(pendingAmount);
            $("#lblTotalAmount").text($("[id*=hdnTotalPendingAmount]").val());
            //alert($('[id*=hdnTotalPendingAmount]').val());
        } else {
            alert("Data is already exist inside table");
        }
        ClearForm();
        $('[id*=ddlOffense]').val("-1");
    } else {

        e.preventDefault();
    }
    $("#loadingDiv").hide();
});

function DeleteRowSelect(a, amt) {
    var cnt = $("[id*=gvOffenses] tr:has(td)").length;
    var r = confirm('Are you sure, you want to delete this Record?');
    if (r == true) {
        if (cnt > 1) {
            $(a).remove();
        } else {
            $("[id*=gvOffenses]").remove();
        }
        var pendingAmount = parseInt($('[id*=hdnTotalPendingAmount]').val()) - parseInt(amt);
        $('[id*=hdnTotalPendingAmount]').val(pendingAmount);
        $("#lblTotalAmount").text($("[id*=hdnTotalPendingAmount]").val());
    } else {

    }
}

function OffenseValidation() {
    var count = 0;
    if ($("[id*=txtAmount]").val() != '') {
        if (!numberAllow('txtAmount', 'Only numeric data allowed')) {
            count++;
        }
    }

    if ($("[id*=txtAmount]").val() == '') {
        $("[id*=txtAmount]").next($('span')).text('Enter Amount');
        count++;
    }

    if ($("[id*=ddlOffense]").val() == "-1") {
        $("[id*=ddlOffense]").next($('span')).text('Select Offense');
        count++;
    }
    if ($("[id*=txtMVActs]").val() == "") {
        $("[id*=txtMVActs]").next($('span')).text('Enter MV Act');
        count++;
    }

    if (count > 0)
        return false;
    return true;
}

function FormValidation() {
    var count = 0;

    if ($("#hdnPlateImage").val() == "") {
        $("#FUPlate").next($('span')).text('Only .jpg,.png,.jpeg,.gif Files are allowed');
        count++;
    }
    if ($("#hdnContextImage").val() == "") {
        $("#FUContextImage").next($('span')).text('Only .jpg,.png,.jpeg,.gif Files are allowed');
        count++;
    }
    if ($("#hdnScreenShot").val() == "") {
        $("#FUScreenShots").next($('span')).text('Only .jpg,.png,.jpeg,.gif Files are allowed');
        count++;
    }
    if ($("[id*=txtSearchVehicleNo]").val() == "") {
        $("[id*=txtSearchVehicleNo]").next($('span')).text('Enter Vehicle No');
        count++;
    }
    if ($("[id*=txtSurname]").val() == "") {
        $("[id*=txtSurname]").next($('span')).text('Enter Last Name');
        count++;
    }
    if ($("[id*=txtFirstName]").val() == "") {
        $("[id*=txtFirstName]").next($('span')).text('Enter First Name');
        count++;
    }
    if ($("[id*=txtMiddleName]").val() == "") {
        $("[id*=txtMiddleName]").next($('span')).text('Enter Middle Name');
        count++;
    }
    if ($("[id*=txtAddress]").val() == "") {
        $("[id*=txtAddress]").next($('span')).text('Enter Address');
        count++;
    }
    if ($("[id*=txtCity]").val() == "") {
        $("[id*=txtCity]").next($('span')).text('Enter City');
        count++;
    }
    if ($("[id*=txtState]").val() == "") {
        $("[id*=txtState]").next($('span')).text('Enter State');
        count++;
    }
    if ($("[id*=txtPostalCode]").val() == "") {
        $("[id*=txtPostalCode]").next($('span')).text('Enter Postal Code');
        count++;
    }
    if ($("[id*=txtDateTimeOfViolation]").val() == "") {
        $("[id*=txtDateTimeOfViolation]").parent().next($('span')).text('Enter Violation Date');
        count++;
    }
    if ($("[id*=txtDueDate]").val() == "") {
        $("[id*=txtDueDate]").parent().next($('span')).text('Enter Due Date');
        count++;
    }
    if ($("[id*=txtVehicleModel]").val() == "") {
        $("[id*=txtVehicleModel]").next($('span')).text('Enter Vehicle Model');
        count++;
    }
    if ($("[id*=txtVehicleMake]").val() == "") {
        $("[id*=txtVehicleMake]").next($('span')).text('Enter Vehicle Make');
        count++;
    }
    if ($("[id*=txtNoOfViolations]").val() == "") {
        $("[id*=txtNoOfViolations]").next($('span')).text('Enter No of Violation');
        count++;
    }
    if ($("[id*=txtPoliceStation]").val() == "") {
        $("[id*=txtPoliceStation]").next($('span')).text('Enter Police Station');
        count++;
    }
    if ($("[id*=txtLocation]").val() == "") {
        $("[id*=txtLocation]").next($('span')).text('Enter Location');
        count++;
    }
    if ($("[id*=gvOffenses] tr:has(td)").length == 0) {
        $("[id*=grdMsg]").text('You have to enter at least One Offense');
        count++;
    } else {
        $("[id*=grdMsg]").text('');
    }
    //alert(count);
    if (count > 0)
        return false;
    return true;
}

function numberAllow(id, message) {
    if ($('#' + id).val() != '') {
        if (!$.isNumeric($('#' + id).val())) {
            $('#' + id).next($('span')).text(message);
            return false;
        } else {
            $('#' + id).next($('span')).text('');
            return true;
        }
    }
}

function validateSelect(id, message) {
    if ($('#' + id).val() == '-1') {
        $('#' + id).next($('span')).text(message);
    } else {
        $('#' + id).next($('span')).text('');
    }
}

function validate(id, message, date) {
    if (date != '') {
        if ($('#' + id).val() == '') {
            $('#' + id).parent().next($('span')).text(message);
        } else {
            $('#' + id).parent().next($('span')).text('');
        }
    } else {
        if ($('#' + id).val() == '') {
            $('#' + id).next($('span')).text(message);
        } else {
            $('#' + id).next($('span')).text('');
        }
    }
}

$("#btnSave").click(function () {
    if (FormValidation()) {
        $('#loadingDiv').removeClass("hidden");
        var challanBO = {};

        var files = new Array();
        for (var i = 0; i < $("#FUPlate").prop("files").length; i++) {
            var file = {};
            file.Name = $("#FUPlate").prop("files")[i].name;
            file.Path = $("#FUPlate").val().split(', ')[i];
            files.push(file);
        }

        challanBO.HeadOfficeId = parseInt($("#hdnHeadOfficeId").val());
        challanBO.VehiclePlateNo = $("[id$=txtSearchVehicleNo]").val();
        challanBO.LPImage = $("[id$=imgPlate]").attr('src');
        challanBO.JSONFilePath = '';
        challanBO.ViolationDateTime = moment($("[id$=txtDateTimeOfViolation]").val(), "YYYY-MM-DD HH:mm:ss").format("YYYY-MM-DD HH:mm:ss");
        challanBO.Location = $("[id$=txtLocation]").val();
        challanBO.PoliceStation = $("[id$=txtPoliceStation]").val();
        challanBO.OffenderName = $("[id$=ddlSalutation]").val() + ' ' + $("[id$=txtSurname]").val() + ' ' + $("[id$=txtFirstName]").val() + ' ' + $("[id$=txtMiddleName]").val();
        challanBO.OffenderAddress = $("[id$=txtAddress]").val();
        challanBO.City = $("[id$=txtCity]").val();
        challanBO.State = $("[id$=txtState]").val();
        challanBO.PostalAddress = $("[id$=txtAddress]").val();
        challanBO.VehicleTypeId = parseInt($("[id$=ddlVehicleType]").val());
        challanBO.VehicleModel = $("[id$=txtVehicleModel]").val();
        challanBO.VehicleMake = $("[id$=txtVehicleMake]").val();

        challanBO.DueDate = moment($("[id$=txtDueDate]").val(), "DD/MM/YYYY hh:mm:ss");
        challanBO.NoOfVilations = parseInt($("[id$=txtNoOfViolations]").val());
        challanBO.PendingChallanIds = $("[id$=hdnPendingChallanIds]").val();
        //challanBO.ViolationScreenShots = $("[id$=imgScreenShots]").attr('src');
        //challanBO.SelectedSnapPath = $("[id$=imgScreenShots]").attr('src');
        //challanBO.ContextImagePath = $("[id$=imgContextImage]").attr('src');

        var amount = 0;
        var listChallanOffenseBO = [];
        var frmI = 0;
        $("[id*=gvOffenses] tr:has(td)").each(function () {
            var row = $(this).closest('tr');

            var challanOffenseBO = {};
            var ids = row.find('td').eq(0).text().split('_');
            challanOffenseBO.OffencesId = parseInt(ids[0]);
            challanOffenseBO.MVActIds = ids[1];
            challanOffenseBO.Amount = parseFloat(row.find('td').eq(3).text());
            amount += parseInt(challanOffenseBO.Amount);

            listChallanOffenseBO.push(challanOffenseBO);
            frmI++;
        });
        challanBO.TotalAmount = amount;
        $.ajax({
            type: 'POST',
            url: '../clientUI/CRONewChallan.aspx/SaveChallan',
            data: "{challanBO:" + JSON.stringify(challanBO) + ",listChallanOffenseBO:" + JSON.stringify(listChallanOffenseBO) + "," + "platefiles:" + JSON.stringify($("#hdnPlateImage").val()) + "," + "contextfiles:" + JSON.stringify($("#hdnContextImage").val()) + "," + "screenshotsfiles:" + JSON.stringify($("#hdnScreenShot").val()) + "}",
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (data) {
                if (data.d != null) {
                    data = $.parseJSON(data.d);
                    $('#loadingDiv').addClass("hidden");
                    //$('input[id$=hdnDomesticGasBillId]').val(data.GasBillID);
                    //$('input[id$=hdnSavedBillNo]').val('Bill No : ' + data.GasBillNo + ' Saved Successfully.');
                    if (data.ChallanNo != '0') {
                        alert('Challan : ' + data.ChallanNo + ' has been created Successfully.');
                        window.location.href = "../ClientUI/CRODashboard.aspx"
                    } else {
                        alert('Challan has been already generated for today.');
                    }
                    //$('input[id$=hdnMode]').val('SavedSuccess');
                    //$('[id*=btnBindBillPrint]').click();

                }
            }, failure: function (response) {
                alert('Opps!Something went Wrong.Contact Your Administrator.');
                $('#loadingDiv').addClass("hidden");
            }
        });
    }
});

$('#txtSearchVehicleNo').keyup(function () {
    var strSearchVehicleNo = $(this).val();
    if (strSearchVehicleNo.length > 6 && strSearchVehicleNo.length < 11) {
        $.ajax({
            type: 'POST',
            url: '../clientUI/CRONewChallan.aspx/BindPendingChallanGrid',
            data: "{strSearchVehicleNo:" + JSON.stringify(strSearchVehicleNo) + "}",
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (data) {

                var dtSetResult = $.parseJSON(data.d);
                BindPendingChallanGrid(dtSetResult.Table)
                var dtResult1 = dtSetResult.Table1;
                //alert(dtResult1["0"]);
                var dtResult2 = dtSetResult.Table2;
                var dtResult3 = dtSetResult.Table3;
                var dtResult4 = dtSetResult.Table4;
                $('[id$=hdnPendingChallanIds]').val(dtResult4[0]["Column1"] != null ? dtResult4[0]["Column1"] : '');
                $('[id$=hdnTotalPendingAmount]').val(dtResult3[0]["TotalAmount"] != null ? dtResult4[0]["TotalAmount"] : '0');
                var ddlOffense = $("[id*=ddlOffense]");
                ddlOffense.empty().append('<option selected="selected" value="-1">-Select-</option>');
                $.each(dtResult2, function () {
                    ddlOffense.append($("<option></option>").val(this['Id']).html(this['Name']));
                });
                $('[id$=txtNoOfViolations]').val(dtResult1[0]["ChallanCount"]);

            }
        });
    }
});

function BindPendingChallanGrid(data) {
    var gvUnit = '';
    var header = '<table id="gvListOfPendingEchallan" class="table table-striped table-bordered" cellspacing="0" cellpadding="4" border="3" style="border-collapse:collapse;" rules="all">' +
                '<thead><tr style="background-color:WhiteSmoke;">' +
                '<th style="text-align:center" class="hidden" valign="top" style="width:50px;" scope="col">ChallanId</th>' +
                '<th style="text-align:center" valign="top" style="width:50px;" scope="col">Sr. No.</th>' +
                '<th style="text-align:center" valign="top" style="width:60px;" scope="col">Challan Date Time</th>' +
                '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Challan No</th>' +
                '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Amount</th>' +
                '</tr></thead>';

    var rows = '';
    for (var i = 0; i < data.length; i++) {
        rows = rows + '<tbody>' + '<tr id="tr_' + (i).toString() + '">' +
               '<td align="left" class="hidden" valign="top" style="width:50px;">' + data[i]["ChallanId"] + '</td>' +
               '<td align="left" valign="top" style="width:50px;">' + data[i]["SrNo"] + '</td>' +
               '<td align="left" valign="top" style="width:60px;">' + data[i]["ChallanDateTime"] + '</td>' +
               '<td align="right" valign="top" style="width:80px;">' + data[i]["ChallanNo"] + '</td>' +
               '<td align="center" valign="top" style="width:20px;">' + data[i]["TotalAmount"] + '</td>' +
               '</tr>';
    }
    gvUnit = header + rows + '</tbody></table>';
    $("#divListOfPendingChallan").empty().append(gvUnit);
}