$(document).ready(function () {
    $('.register').click(function () {
        $.ajax({
            type: 'GET',
            dataType: 'html',
            url: '~/../../Account/Register',
            success: function (result) {
                $('#registerForm').html(result);
            }
        });
    });

    $('.hide-form1').click(function () {
        $.ajax({
            type: 'GET',
            dataType: 'html',
            url: '~/../../Home/Index',
            success: function (result) {
                $('#homePage').html(result);
            }
        });
    });
});