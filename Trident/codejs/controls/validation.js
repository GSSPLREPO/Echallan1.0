$(document).ready(function () {


    $('#form1').validate({
        onkeyup: function (element, event) {
            if (event.which === 9 && this.elementValue(element) === "") {
                return;
            } else {
                this.element(element);
            }
        },
    });

    $('.req').each(function () {
        alert('req');
        $(this).rules('add', {
            required: true,
            //number: true,
            messages: {
                required: "your custom message"
                //number: "your custom message"
            }
        });
    });
});
