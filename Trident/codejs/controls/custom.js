function addCss(controlClass, attr, value) {
    $(controlClass).css(attr, value);
}

function removeClass(controlClass, value) {
    debugger;
    $(controlClass).removeClass(value);
}

function resetDivs(id) {
    var divId = id;
    $('#' + divId + ' input[type=text]').val('');
    $('#' + divId + ' input[type=checkbox]').removeAttr('checked');
    $('#' + divId + ' input[type=radio]').removeAttr('checked');
    $('#' + divId + ' textarea').val('');
    $('.errMsg').text('');
    $('.lblmsg').text('');
    $('#' + divId + ' select').val('-1');
    $('#' + divId + ' selectelem').selectedIndex = 0;
}

$('#btnAddNew').click(function () {
    AddNew();
    $('[id*=txtSearch]').focus();
});

function AddNew() {
    resetDivs('defaultPanel');
    previousAddNewState();
    $('html, body').animate({ scrollTop: 0 }, 'slow', function () { });
}

$('#ddlSearchBy').change(function () {
    var SearchBy = $('#ddlSearchBy').val();
    if (SearchBy == 'Receipt No') {
        $('#txtSReceiptNo').show();
        $('#txtSearch').hide();
    }
    else {
        $('#txtSReceiptNo').hide();
        $('#txtSearch').show();
    }
    $('#txtSearch').val('');
    $('#txtSReceiptNo').val('');
});

function getCurrentDate() {
    var cDate = new Date();
    var dd = cDate.getDate(5.30);
    var mm = cDate.getMonth(5.30) + 1; //January is 0!
    var yyyy = cDate.getFullYear(5.30);

    if (dd < 10) {
        dd = '0' + dd;
    }
    if (mm < 10) {
        mm = '0' + mm;
    }
    return dd + '/' + mm + '/' + yyyy;
}
