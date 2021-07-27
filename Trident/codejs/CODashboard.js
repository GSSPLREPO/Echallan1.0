$("#txtSearch").autocomplete({
    source: function (request, response) {
        var SearchBy = $("#ddlSearchBy").val();
        var Searchtxt = $("#txtSearch").val();

        $.ajax({
            type: "POST",
            url: "../ClientUI/CollectionOfficerDashboard.aspx/SearchData",
            data: "{'strType':'" + SearchBy + "','strData':'" + Searchtxt + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                response($.map(data.d, function (item) {
                    return { 
                        label: item.split('-')[0],
                        val: item.split('-')[1]
                    };
                }));
            },
            error: function () {
                alert("Error");
            }
        });
    },
    select: function (e, i) {
        $('input[id$=hdnChallanId]').val(i.item.val);
        editChallan(i.item.val);
    }
});

function editChallan(ChallanId) {
    $.ajax({
        type: "POST",
        url: "../ClientUI/CollectionOfficerDashboard.aspx/BindData",
        data: "{'ChallanId':'" + ChallanId + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            data = $.parseJSON(data.d);
            if (data.Table != null) {
                var t1 = JSON.stringify(data.Table);
                var t2 = JSON.stringify(data.Table1);
                var t3 = JSON.stringify(data.Table2);

                $('#lblName').text(data.Table[0].OffenderName);
                $('#lblAddress').text(data.Table[0].OffenderAddress);
                $('#lblCity').text(data.Table[0].City);
                $('#lblState').text(data.Table[0].State);
                $('#lblPostCode').text(data.Table[0].PostalCode);
                $('#lblDateTime').text(data.Table[0].ViolationDateTime);
                $('#lblDueDate').text(data.Table[0].DueDate);
                $('#lblVehicleType').text(data.Table[0].VehicleType);
                $('#lblVehicleModel').text(data.Table[0].VehicleModel);
                $('#lblVehicleMake').text(data.Table[0].VehicleMake);
                $('#lblNoOfViolations').text(data.Table[0].NoOfVilations);
                $('#lblPoliceStation').text(data.Table[0].PoliceStation);
                $('#lblLocation').text(data.Table[0].Location);
                $('#lblVehicleNo').text(data.Table[0].VehiclePlateNo);
                $('#lblTotalAmount').text(data.Table[0].TotalAmount);
                BindPreChallan(data.Table1)
                BindCurrentChallan(data.Table2)
            }
        },
        error: function () {
            alert("Error");
        }
    });

}


function BindPreChallan(data) {
    var gvPreChallan = '';
    var header = '';
    header = '<table id="gvMeterDetails" class="table table-bordered " cellspacing="0" style="border-collapse:collapse;"><tbody><tr style="background-color:WhiteSmoke;">' +
         '<th align="center" scope="col">Select</th>' +
        '<th class="hidden" align="left" valign="middle" scope="col">Id</th>' +
        '<th align="center" scope="col">Challan DateTime</th>' +
        '<th align="center" scope="col">Challan No</th>' +
        '<th align="center" scope="col">Amt</th>' +
        '</tr>';

    var rows = '';
    for (var i = 0; i < data.length; i++) {
        rows = rows + '<tr>' +
        '<td valign="middle" align="center" style="white-space:nowrap;"><input id="chkAdd" Class="form-control" type="checkbox" style="height: 20px !important; width: 20px !important;" onchange="ResetCheckedDisplay(' + data[i].ChallanId + ', ' + data[i].TotalAmount + ', this)" /></td>' +
        '<td class="hidden" align="left" valign="middle" style="white-space:nowrap;">' + data[i].ChallanId + '</td>' +
        '<td valign="middle" align="center" style="white-space:nowrap;">' + data[i].ChallanDateTime + '</td>' +
        '<td valign="middle" align="center" style="white-space:nowrap;">' + data[i].ChallanNo + '</td>' +
        '<td valign="middle" align="center" halign="right" style="white-space:nowrap;">' + data[i].TotalAmount + '</td>' +
        '</tr>';
    }

    gvPreChallan = header + rows + '</tbody></table>';
    $("#divPreChallan").empty().append(gvPreChallan);
    $('#loadingDiv').addClass("hidden");
    $('.focus_0').focus();
}

function BindCurrentChallan(data) {
    var gvChallan = '';
    var header = '';
    header = '<table id="gvMeterDetails" class="table table-bordered " cellspacing="0" style="border-collapse:collapse;"><tbody><tr style="background-color:WhiteSmoke;">' +
        '<th class="hidden" align="left" valign="middle" scope="col">COId</th>' +
        '<th align="center" scope="col">Offense</th>' +
        '<th align="center" scope="col">MVAct</th>' +
        '<th align="center" scope="col">Amt</th>' +
        '</tr>';

    var rows = '';
    for (var i = 0; i < data.length; i++) {
        rows = rows + '<tr>' +
        '<td class="hidden" align="left" valign="middle" style="white-space:nowrap;">' + data[i].COId + '</td>' +
        '<td valign="middle" style="white-space:nowrap;">' + data[i].Offense + '</td>' +
        '<td valign="middle" style="white-space:nowrap;">' + data[i].MVAct + '</td>' +
        '<td valign="middle" align="right" style="white-space:nowrap;">' + data[i].Amount + '</td>' +
        '</tr>';
    }
    gvChallan = header + rows + '</tbody></table>';
    $("#divChallan").empty().append(gvChallan);
    $('#loadingDiv').addClass("hidden");
    $('.focus_0').focus();
}

function ResetCheckedDisplay(id, amt, IsChecked) {
    if ($(IsChecked).prop("checked") == true) {
        var prevIdsLength = $('#hdnPrevChallanId').val().length;
        if (prevIdsLength > 0) {
            var prevChallanIdsVal = $('#hdnPrevChallanId').val() + ', ' + id;
            $('#hdnPrevChallanId').val(prevChallanIdsVal);
        } else {
            $('#hdnPrevChallanId').val(id);
        }

        var Checkedamt = parseInt($('#lblTotalAmount').text()) + parseInt(amt);
        $('#lblTotalAmount').text(Checkedamt);
    } else {
        var prevIdsLength = $('#hdnPrevChallanId').val().length;
        if (prevIdsLength = 1) {
            var prevChallanIdsVal = $('#hdnPrevChallanId').val();
            prevChallanIdsVal = prevChallanIdsVal.replace(prevChallanIdsVal.toString(), '');
            $('#hdnPrevChallanId').val(prevChallanIdsVal);
        } else {
            var prevChallanIdsVal = ', ' + $('#hdnPrevChallanId').val();
            prevChallanIdsVal = prevChallanIdsVal.replace(prevChallanIdsVal.toString(), '');
            $('#hdnPrevChallanId').val(prevChallanIdsVal);
        }
        var unCheckedamt = parseInt($('#lblTotalAmount').text()) - parseInt(amt);
        $('#lblTotalAmount').text(unCheckedamt);
    }

}

$('#btnSave').click(function () {
    if (FormValidation()) {
        $('#loadingDiv').removeClass("hidden");
        var objReceiptBO = {};

        objReceiptBO.ChallanId = $('[id$=hdnPrevChallanId]').val() != '' ? ($('[id$=hdnChallanId]').val() + ', ' + $('[id$=hdnPrevChallanId]').val()) : $('[id$=hdnChallanId]').val();
        objReceiptBO.PaymentMode = $('[id$=ddlPaymentMode]').val();
        objReceiptBO.PaidAmount = parseFloat($('#lblTotalAmount').text());
        objReceiptBO.MobileNo = $('[id$=txtMobileNo]').val();
        objReceiptBO.EmailId = $('[id$=txtEmailId]').val();

        $.ajax({
            type: 'POST',
            url: '../ClientUI/CollectionOfficerDashboard.aspx/SaveReceipt',
            data: "{objReceiptBO:" + JSON.stringify(objReceiptBO) + "}",
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (data) {
                if (data.d != null) {
                    data = $.parseJSON(data.d);
                    $('#loadingDiv').addClass("hidden");
                    //$('input[id$=hdnDomesticGasBillId]').val(data.GasBillID);
                    //$('input[id$=hdnSavedBillNo]').val('Bill No : ' + data.GasBillNo + ' Saved Successfully.');
                    if (data[0].ReceiptNo != '0') {
                        alert('Receipt : ' + data[0].ReceiptNo + ' has been created Successfully.');

                        window.location.href = "../ClientUI/CollectionOfficerDashboard.aspx?RC=" + data[0].Id;
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

function FormValidation() {
    var count = 0;

    if ($('[id$=ddlPaymentMode]').val() == "") {
        $("[id*=ddlPaymentMode]").next($('span')).text('Select Payment Mode');
        count++;
    }

    if ($("[id*=txtEmailId]").val() != "") {
        var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!regex.test($("[id*=txtEmailId]").val())) {
            $("[id*=txtEmailId]").next($('span')).text('Enter Valid EmailID');
            count++;
        }
        else {
            $("[id*=txtEmailId]").next($('span')).text('');
        }
    }
    if ($("[id*=txtMobileNo]").val() == "") {

    } else {
        if (!numberAllow('txtMobileNo', 'Only numeric data allowed')) {
            //alert('txtDepositElse');
            count++;
        }
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