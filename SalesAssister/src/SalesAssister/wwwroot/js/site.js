$(document).ready(function () {
    $("#mfa").submit(function () {
        event.preventDefault();
        $.post('https://mfa.acceptto.com/api/v9/authenticate_with_options?message=You+are+logged+into+Sales+Assister+if+this+is+not+you+please+log+out!&type=Login&email=bulbulir11@hotmail.com&auth_type=1&uid=06ec7d21cb4b89214a08ea1b31c7d6fbc230bfd1d7dfcf95bee1cd056695ef49&secret=89fd1fc3bf714664023e05563a4859210ab868c702631f9253e96c9eb8e1cf4f').then(function (resonse) {
            console.log(resonse);
        }).fail(function (error) {
            console.log("fail");
        });
    });

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

    $('.send-message').click(function () {
        $.ajax({
            type: 'GET',
            dataType: 'html',
            url: '~/../../Clients/SendMessage',
            success: function (result) {
                $('#sendMessage').html(result);
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

