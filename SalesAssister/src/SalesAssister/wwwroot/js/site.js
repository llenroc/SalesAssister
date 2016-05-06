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

    $('.add-client').click(function () {
        $.ajax({
            type: 'GET',
            dataType: 'html',
            url: '~/../../Clients/Create',
            success: function (result) {
                $('#clientForm').html(result);
            }
        });
    });

});

function myFunction() {
    location.reload();
}