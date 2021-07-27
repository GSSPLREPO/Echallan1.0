function ShowHide(data) {
    data = $.parseJSON(data);
    //alert(data[0]);
    for (var index = 0; index < Object.keys(data).length; index++) {
        var paramId = '#' + data[index].split(', ')[0];
        var menuParam = '#' + data[index].split(', ')[1];
        $(paramId).show();
        $(menuParam).show();
    }
};