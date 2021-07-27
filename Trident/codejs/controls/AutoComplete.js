function AutoComplete(path, onSelectMethods, dataParam) {
    $(".autosuggest").autocomplete({
        source: function (request, response) {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                //url: "Customer.aspx/GetAllCustomer",
                url: path,
                data: dataParam,
                dataType: "json",
                success: function (data) {
                    response($.map(data.d, function (item) {
                        return {
                            label: item.split('~')[0],
                            val: item.split('~')[1]
                        };
                    }));
                },
                error: function () {
                    alert('Opps!Something went Wrong.Contact Your Administrator.');

                }
            });
        },
        select: function (e, i) {
            $("#<%= hdSearch.ClientID%>").val(i.item.val);
            editCustomer(i.item.val);
        }
    });
}