//function chkHeaderChange() {
//    if ($('#chkHeader').is(":checked")) {
//        $('[id*=chkChild_]').prop("checked", true);
//    }
//    else if ($('#chkHeader').is(":not(:checked)")) {
//        $('[id*=chkChild_]').prop("checked", false);
//    }
//};

//function chkChildChange(dataCount) {
//    var chkCount = $('[id*=chkChild_]:checked').length;
//    if (chkCount == dataCount) {
//        $('#chkHeader').prop("checked", true);
//    } else {
//        $('#chkHeader').prop("checked", false);
//    }
//};

//$('#btnPrintSelected').click(function (e) {
//    var id = '';
//    //var hfId = '';
//    //var challanId = '';
//    //var challanNo = '';
//    //var selectedImgSource = '';
//    var counter = 0;

//    $("[id*=gvChallan] tr:has(td)").each(function (i) {
//        var row = $(this).closest('tr');

//        if (row.find("input[id*=chkChild_]").is(':checked')) {
//            id = (id.length > 0) ? (id + ', ' + row.find('td').eq(1).text()) : row.find('td').eq(1).text();
            
//            counter++;
//        }
//    });
//    alert(id);
//    alert(counter);
//    //if (counter > 0) {
//    //    $.ajax({
//    //        type: 'POST',
//    //        url: '../ClientUI/CRVODashboard.aspx/UpdateApproveMultiple',
//    //        data: '{challanId:' + JSON.stringify(id) + ", " + 'selectedImgSource:' + JSON.stringify(selectedImgSource) + "}",
//    //        contentType: 'application/json; charset=utf-8',
//    //        dataType: 'json',
//    //        success: function (data) {
//    //            //alert(data.d);
//    //            if (data.d != null) {
//    //                //data = $.parseJSON(data.d);
//    //                alert(data.d);
//    //                GridBindCRVO();
//    //            } else {
//    //                alert('No data found');
//    //            }
//    //        }, failure: function (response) {
//    //            alert('Opps!Something went Wrong.Contact Your Administrator.');
//    //        }
//    //    });
//    //}
//});

function getPrintAll() {
    $('#divPrint').append($('#hdnChallanString').val());
    getPrintAll_CPC($('#hdnChallanString').val());
}