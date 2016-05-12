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

function OnLinkedInFrameworkLoad() {
    IN.Event.on(IN, "auth", OnLinkedInAuth);
}

function OnLinkedInAuth() {
    IN.API.Profile("me").result(ShowProfileData);
}

function ShowProfileData(profiles) {
    var member = profiles.values[0];
    var id = member.id;
    var firstName = member.firstName;
    var lastName = member.lastName;
    var photo = member.pictureUrl;
    var headline = member.headline;
    
    console.log(member);
    console.log(id);
    console.log(firstName);
    console.log(lastName);
    console.log(headline);
    //use information captured above

    $(".in").append('<h3>' + headline + '</h3>');
    $(".photo").append('<img src="' + photo + '"/>');
}

