//Visible All Page For SuperAdmin
function visibleAll() {
    $('#col1').show();
    $('#col1 > ul').show();
    $('#InventoryCol1').show();
    $('#InventoryCol1 > ul').show();
    $('#InventoryCol2').show();
    $('#InventoryCol2 > ul').show();
    $('#OrganisationInfo > li').show();
    $('#PurchaseInventory > li').show();
    $('#MaterialInventory > li').show();
    $('#EmployeeInfo > li').show();
    $('#col2').show();
    $('#col2 > ul').show();
    $('#MaterialInfo > li').show();
    $('#col3').show();
    $('#col3 > ul').show();
    $('#PurchaseMaster > li').show();
    $('#MainMaster').show();
    $('#Inventory').show();
    $('#ReportsMaster').show();
    $('#ReportsMaster').find('li').show();
    $('#25').show();
    $('#AccountMaster').show();
    $('#ReportInventory > li').show();
}
//Visible Only Few Page Which is Authorised
function visibleOnlyAuthorisedPage(id) {
    $.ajax({
        type: "POST",
        url: "../WebMethods/NameValidation.asmx/ScreenID",
        data: '{intRoleID: "' + id + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var result = JSON.parse(response.d);
            var resultLength = result.length;
            for (var x = 0; x < resultLength; x++) {
                $('#' + result[x].ScreenId).show();
            }
            if ($('#OrganisationInfo > li:not([style*="display: none"])').length > 0) {
                $('#OrganisationTitle').show();
                $('#OrganisationDivider').show();
                $('#OrganisationInfo').show();
            }
            if ($('#MaterialInfo > li:not([style*="display: none"])').length > 0) {
                $('#MaterialTitle').show();
                $('#MaterialDivider').show();
                $('#MaterialInfo').show();
            }
            if ($('#PurchaseMaster > li:not([style*="display: none"])').length > 0) {
                $('#PurchaseTitle').show();
                $('#PurchaseDivider').show();
                $('#PurchaseMaster').show();
            }
            if ($('#EmployeeInfo > li:not([style*="display: none"])').length > 0) {
                $('#EmployeeTitle').show();
                $('#EmployeeDivider').show();
                $('#EmployeeInfo').show();
            }
            if ($('#MaterialInventory > li:not([style*="display: none"])').length > 0) {
                $('#MaterialInventoryTitle').show();
                $('#MaterialInventoryDivider').show();
                $('#MaterialInventory').show();
            }
            //---------------------------- Reports --------------------------------------
            //if ($('#ReportInventory > li:not([style*="display: none"])').length > 0) {
            //    $('#EmployeeTitle').show();
            //    $('#EmployeeDivider').show();
            //    $('#EmployeeInfo').show();
            //}
            //---------------------------- Reports --------------------------------------
            if ($('#PurchaseInventory > li:not([style*="display: none"])').length > 0) {
                $('#PurchaseInventoryTitle').show();
                $('#PurchaseInventoryDivider').show();
                $('#PurchaseInventory').show();
            }
            if ($('#col1 > ul:not([style*="display: none"])').length > 0) {
                if ($('#col1 > ul:not([style*="display: none"])').length !== 2) {
                    $('#col1 br').remove();
                }
                $('#col1').show();
            }
            if ($('#col2 > ul:not([style*="display: none"])').length > 0) {
                $('#col2').show();
            }
            if ($('#col3 > ul:not([style*="display: none"])').length > 0) {
                $('#col3').show();
            }
            if ($('#InventoryCol1 > ul:not([style*="display: none"])').length > 0) {
                $('#InventoryCol1').show();
            }
            if ($('#InventoryCol2 > ul:not([style*="display: none"])').length > 0) {
                $('#InventoryCol2').show();
            }
            if ($('#row1 > div:not([style*="display: none"])').length > 0) {
                $('#MainMaster').show();
                var leng = $('#row1 > div:not([style*="display: none"])').length;
                $('#row1').css('width', 200 * $('#row1 > div:not([style*="display: none"])').length);
                if (leng === 1) {
                    $('#col1').removeClass().addClass('col-md-12');
                    $('#col2').removeClass().addClass('col-md-12');
                    $('#col3').removeClass().addClass('col-md-12');

                }
                if (leng === 2) {
                    $('#col1').removeClass().addClass('col-md-6');
                    $('#col2').removeClass().addClass('col-md-6');
                    $('#col3').removeClass().addClass('col-md-6');

                }
                if (leng === 3) {
                    $('#col1').removeClass().addClass('col-md-4');
                    $('#col2').removeClass().addClass('col-md-4');
                    $('#col3').removeClass().addClass('col-md-4');

                }
            }
            if ($('#row2 > div:not([style*="display: none"])').length > 0) {
                $('#Inventory').show();
                var leng = $('#row2 > div:not([style*="display: none"])').length;
                $('#row2').css('width', 200 * $('#row2 > div:not([style*="display: none"])').length);
                if (leng === 1) {
                    $('#InventoryCol1').removeClass().addClass('col-md-12');
                    $('#InventoryCol2').removeClass().addClass('col-md-12');
                }
                if (leng === 2) {
                    $('#InventoryCol1').removeClass().addClass('col-md-6');
                    $('#InventoryCol2').removeClass().addClass('col-md-6');
                }
            }
            $('#ReportsMaster').find('li').each(function (i) {
                if ($(this).not('[style*="display: none"]').length > 0) {
                    $('#ReportsMaster').show();
                }
            });

            $('#ReportInventory').find('li').each(function (i) {
                if ($(this).not('[style*="display: none"]').length > 0) {
                    $('#ReportInventory').show();
                    //$('#PendingChallanReport').show();
                }
            });
        },
        failure: function (response) {
            alert(response);
        }
    });
}
function VisibleAccounts(id)
{
    if (id === 1) {
        $('#AccountMaster').show();
    }
}