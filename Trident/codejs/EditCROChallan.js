function editChallan(Id, data) {
    BindoffenseGrid(data);
    $("#loadingDiv").hide();

    $.ajax({
        type: "POST",
        url: "../clientui/EditCROChallan.aspx/GetChallanById",
        data: '{challanId: ' + Id + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            //alert(data.d);
            if (data != null) {
                var a = $.parseJSON(data.d);
                //alert(a[0]);
                $("[id$=txtSearchVehicleNo]").val(a[0].VehiclePlateNo);
                $("[id$=txtDateTimeOfViolation]").val(a[0].ViolationDateTime);
                $("[id$=txtLocation]").val(a[0].Location);
                $("[id$=txtPoliceStation]").val(a[0].PoliceStation);
                $("[id$=ddlSalutation]").val(a[0].OffenderName.split(' ')[0]) + ' ' + $("[id$=txtSurname]").val(a[0].OffenderName.split(' ')[1]) + ' ' + $("[id$=txtFirstName]").val(a[0].OffenderName.split(' ')[2]) + ' ' + $("[id$=txtMiddleName]").val(a[0].OffenderName.split(' ')[3]);
                $("[id$=txtAddress]").val(a[0].OffenderAddress);
                $("[id$=txtCity]").val(a[0].City);
                $("[id$=txtState]").val(a[0].State);
                $("[id$=txtPostalCode]").val(a[0].PostalCode);
                $("[id$=ddlVehicleType]").val(a[0].VehicleTypeId);
                $("[id$=txtVehicleModel]").val(a[0].VehicleModel);
                $("[id$=txtVehicleMake]").val(a[0].VehicleMake);

                $("[id$=txtDueDate]").val(a[0].DueDate);
                $("[id$=txtNoOfViolations]").val(a[0].NoOfVilations);
                $('[id*=hdnTotalPendingAmount]').val(a[0].TotalAmount);
                $("#lblTotalAmount").text($("[id*=hdnTotalPendingAmount]").val());
                $('[id*=txtComment]').val(a[0].ReturnComment);
            }
            $("#loadingDiv").hide();
        },
        failure: function (response) {
            alert(response);
            $("#loadingDiv").hide();
        }
    });
}

function ClearForm() {
    $('[id*=hdnOffense]').val('');
    $('[id*=txtAmount]').val('');
    $('[id*=hdnMVActs]').val('');
    $('[id*=txtMVActs]').val('');
}

function BindoffenseGrid(data) {
    
    data = $.parseJSON(data);
    var cnt = $("[id*=gvOffenses] tr:has(td)").length;
    //alert(cnt);
    //alert('length ' + data.length.toString());
    if (data.length > 0) {
        var gvUnit = '';
        var header = '<table id="gvOffenses" class="table table-striped table-bordered" cellspacing="0" cellpadding="4" border="3" style="border-collapse:collapse;" rules="all">' +
                    '<thead><tr style="background-color:WhiteSmoke;">' +
                    '<th style="text-align:center" class="hidden" valign="top" style="width:50px;" scope="col">COId</th>' +
                    '<th style="text-align:center" class="hidden" valign="top" style="width:50px;" scope="col">Ids</th>' +
                    '<th style="text-align:center" valign="top" style="width:50px;" scope="col">Offense Desc</th>' +
                    '<th style="text-align:center" valign="top" style="width:100px;" scope="col">Applicable Section</th>' +
                    '<th style="text-align:center" valign="top" style="width:60px;" scope="col">Amount</th>' +
                    '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Delete</th>' +
                    '<th style="text-align:center" class="hidden" valign="top" style="width:80px;" scope="col">IsExist</th>' +
                    '</tr></thead>';

        var rows = '';
        for (var i = 0; i < data.length; i++) {
            rows = rows +
                        '<tbody>' + '<tr id="tr_' + (i + 1).toString() + '">' +
                        '<td align="left" id="tdCOId_' + (i + 1).toString() + '" class="hidden" valign="top" style="width:50px;">' + data[i].COId + '</td>' +
                        '<td align="left" class="hidden" valign="top" style="width:50px;">' + data[i].Id + '</td>' +
                        '<td align="left" valign="top" style="width:50px;">' + data[i].Offense + '</td>' +
                        '<td align="left" valign="top" style="width:100px;">' + data[i].MVAct + '</td>' +
                        '<td align="right" valign="top" style="width:60px;">' + data[i].Amount + '</td>' +
                        '<td align="center" valign="top" style="width:20px;"><img src="../images/Delete.png" Id="id" alt="" style="height:auto;cursor:pointer;" onclick="DeleteRowSelect(tr_' + (i + 1).toString() + ',' + data[i].Amount + ', 0, tdIsExist_' + (i + 1).toString() + ', tdCOId_' + (i + 1).toString() + ')"></td>' +
                        '<td align="left" id="tdIsExist_' + (i + 1).toString() + '" class="hidden" valign="top" style="width:50px;">1</td>' +
                        '</tr>';
        }
        gvUnit = header + rows + '</tbody></table>';
        $("#divListOfOffenses").empty().append(gvUnit);
    }
}

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

$('[id*=btnAddOffense]').click(function (e) {
    $("#loadingDiv").show();
    if (OffenseValidation()) {
        var cnt = $("[id*=gvOffenses] tr:has(td)").length;
        var validCount = $("[id*=gvOffenses] tr > td:contains(" + $("[id*=ddlOffense] option:selected").text() + ")").length;
        //alert('cnt' + cnt.toString());
        //alert('validCount' + validCount.toString());
        if (validCount == 0) {
            if (cnt == 0) {
                var gvUnit = '';
                var header = '<table id="gvOffenses" class="table table-striped table-bordered" cellspacing="0" cellpadding="4" border="3" style="border-collapse:collapse;" rules="all">' +
                            '<thead><tr style="background-color:WhiteSmoke;">' +
                            '<th style="text-align:center" class="hidden" valign="top" style="width:50px;" scope="col">COId</th>' +
                            '<th style="text-align:center" class="hidden" valign="top" style="width:50px;" scope="col">Ids</th>' +
                            '<th style="text-align:center" valign="top" style="width:50px;" scope="col">Offense Desc</th>' +
                            '<th style="text-align:center" valign="top" style="width:100px;" scope="col">Applicable Section</th>' +
                            '<th style="text-align:center" valign="top" style="width:60px;" scope="col">Amount</th>' +
                            '<th style="text-align:center" valign="top" style="width:80px;" scope="col">Delete</th>' +
                            '<th style="text-align:center" class="hidden" valign="top" style="width:80px;" scope="col">IsExist</th>' +
                            '</tr></thead>';

                var rows = '';
                //for (var i = 0; i < data.length; i++) {
                rows = '<tbody>' + '<tr id="tr_' + (cnt + 1).toString() + '">' +
                       '<td align="left" id="tdCOId_' + (cnt + 1).toString() + '" class="hidden" valign="top" style="width:50px;"></td>' +
                       '<td align="left" class="hidden" valign="top" style="width:50px;">' + $('[id*=hdnOffense]').val() + '_' + $('[id*=hdnMVActs]').val() + '</td>' +
                       '<td align="left" valign="top" style="width:50px;">' + $("[id*=ddlOffense] option:selected").text() + '</td>' +
                       '<td align="left" valign="top" style="width:100px;">' + $('[id*=txtMVActs]').val() + '</td>' +
                       '<td align="right" valign="top" style="width:60px;">' + $('[id*=txtAmount]').val() + '</td>' +
                       '<td align="center" valign="top" style="width:20px;"><img src="../images/Delete.png" Id="id" alt="" style="height:auto;cursor:pointer;" onclick="DeleteRowSelect(tr_' + (cnt + 1).toString() + ',' + $('[id*=txtAmount]').val() + ', 0, tdIsExist_' + (cnt + 1).toString() + ', tdCOId_' + (cnt + 1).toString() + ')"></td>' +
                       '<td align="left" id="tdIsExist_' + (cnt + 1).toString() + '" class="hidden" valign="top" style="width:50px;">0</td>' +
                       '</tr>';
                //}
                gvUnit = header + rows + '</tbody></table>';
                $("#divListOfOffenses").append(gvUnit);

            } else {
                var row = '';
                //for (var i = 0; i < data.length; i++) {
                row = '<tr id="tr_' + (cnt + 1).toString() + '">' +
                       '<td align="left" id="tdCOId_' + (cnt + 1).toString() + '" class="hidden" valign="top" style="width:50px;"></td>' +
                       '<td align="left" class="hidden" valign="top" style="width:50px;">' + $('[id*=hdnOffense]').val() + '_' + $('[id*=hdnMVActs]').val() + '</td>' +
                       '<td align="left" valign="top" style="width:50px;">' + $("[id*=ddlOffense] option:selected").text() + '</td>' +
                       '<td align="left" valign="top" style="width:100px;">' + $('[id*=txtMVActs]').val() + '</td>' +
                       '<td align="right" valign="top" style="width:60px;">' + $('[id*=txtAmount]').val() + '</td>' +
                       '<td align="center" valign="top" style="width:20px;"><img src="../images/Delete.png" Id="id" alt="" style="height:auto;cursor:pointer;" onclick="DeleteRowSelect(tr_' + (cnt + 1).toString() + ',' + $('[id*=txtAmount]').val() + ', 0, tdIsExist_' + (cnt + 1).toString() + ', tdCOId_' + (cnt + 1).toString() + ')"></td>' +
                       '<td align="left" id="tdIsExist_' + (cnt + 1).toString() + '" class="hidden" valign="top" style="width:50px;">0</td>' +
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

function DeleteRowSelect(a, amt, c, IsExist, COId) {

    var cnt = $("[id*=gvOffenses] tr:has(td)").length;
    alert(cnt);
    var r = confirm('Are you sure, you want to delete this Record?');
    if (r == true) {
        if (cnt > 1) {
            if ($(IsExist).text() == "1") {
                DeleteCall($(COId).text(), amt);
            }
            $(a).remove();
        } else {
            if ($(IsExist).text() == "1") {
                DeleteCall($(COId).text(), amt);
            }
            $("[id*=gvOffenses]").remove();
        }
        var pendingAmount = parseInt($('[id*=hdnTotalPendingAmount]').val()) - parseInt(amt);
        $('[id*=hdnTotalPendingAmount]').val(pendingAmount);
        $("#lblTotalAmount").text($("[id*=hdnTotalPendingAmount]").val());
        //alert($('[id*=hdnTotalPendingAmount]').val());
    } else {

    }
}

function DeleteCall(Id, amt) {
    $.ajax({
        type: "POST",
        url: "../clientui/EditCROChallan.aspx/DeleteById",
        data: '{challanId: ' + Id + ', Amount: ' + amt + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            //alert(data.d);
            if (data != null && data != '') {
                alert(data.d);
            }
        },
        failure: function (response) {
            alert('Opps!Something went Wrong.Contact Your Administrator.');
        }
    });
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
        challanBO.Id = $("[id$=hdnChallanId]").val();
        //challanBO.HeadOfficeId = $("#hdnHeadOfficeId").val();
        //challanBO.VehiclePlateNo = $("[id$=txtSearchVehicleNo]").val();
        //challanBO.LPImage = $("[id$=imgPlate]").attr('src');
        //challanBO.JSONFilePath = $("[id$=hdnJsonFilePath]").val();
        //challanBO.ViolationDateTime = moment($("[id$=txtDateTimeOfViolation]").val(), "DD/MM/YYYY hh:mm:ss");
        challanBO.Location = $("[id$=txtLocation]").val();
        challanBO.PoliceStation = $("[id$=txtPoliceStation]").val();
        challanBO.OffenderName = $("[id$=ddlSalutation]").val() + ' ' + $("[id$=txtSurname]").val() + ' ' + $("[id$=txtFirstName]").val() + ' ' + $("[id$=txtMiddleName]").val();
        challanBO.OffenderAddress = $("[id$=txtAddress]").val();
        challanBO.City = $("[id$=txtCity]").val();
        challanBO.State = $("[id$=txtState]").val();
        challanBO.PostalCode = $("[id$=txtPostalCode]").val();
        challanBO.VehicleTypeId = $("[id$=ddlVehicleType]").val();
        challanBO.VehicleModel = $("[id$=txtVehicleModel]").val();
        challanBO.VehicleMake = $("[id$=txtVehicleMake]").val();

        //challanBO.DueDate = moment($("[id$=txtDueDate]").val(), "DD/MM/YYYY hh:mm:ss");
        challanBO.NoOfVilations = $("[id$=txtNoOfViolations]").val();
        //challanBO.PendingChallanIds = $("[id$=hdnPendingChallanIds]").val();
        //challanBO.ViolationScreenShots = $("[id$=hdnScreenShots]").val();

        var amount = 0;
        var listChallanOffenseBO = [];
        var frmI = 0;
        $("[id*=gvOffenses] tr:has(td)").each(function () {
            var row = $(this).closest('tr');
            if (row.find('td').eq(6).text() != 1) {
                var challanOffenseBO = {};
                var ids = row.find('td').eq(1).text().split('_');
                challanOffenseBO.OffencesId = ids[0];
                challanOffenseBO.MVActIds = ids[1];
                challanOffenseBO.Amount = row.find('td').eq(4).text();
                //amount += challanOffenseBO.Amount;

                listChallanOffenseBO.push(challanOffenseBO);
            }
            amount = parseInt(amount) + parseInt(row.find('td').eq(4).text());
            frmI++;
        });
        challanBO.TotalAmount = amount;
        $.ajax({
            type: 'POST',
            url: '../clientUI/EditCROChallan.aspx/SaveChallan',
            data: "{challanBO:" + JSON.stringify(challanBO) + ",listChallanOffenseBO:" + JSON.stringify(listChallanOffenseBO) + "}",
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (data) {
                if (data.d != null) {
                    data = $.parseJSON(data.d);
                    $('#loadingDiv').addClass("hidden");
                    //$('input[id$=hdnDomesticGasBillId]').val(data.GasBillID);
                    //$('input[id$=hdnSavedBillNo]').val('Bill No : ' + data.GasBillNo + ' Saved Successfully.');
                    alert('Challan : ' + data.ChallanNo + ' has been updated Successfully.');
                    window.location.href = "../ClientUI/CRODashboard.aspx"
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

function FormValidation() {
    var count = 0;

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