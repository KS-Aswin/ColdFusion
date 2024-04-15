$(document).ready(function() {
    $('#logInBtn').click(function() {
        var user = $('#user').val().trim(); 
        var pass = $('#pass').val().trim();
        if (user.trim() === ''|| pass.trim() ==='' ){
            $("#loginMsg").html('Please fill values in all fields!');
            
        }
        $.ajax({
            url: '../models/pages.cfc?method=doSignin',
            type: 'post',
            data:  {user: user , pass:pass},
            dataType:"json",
            success: function(response) {
                if (response.message === "exists"){
                    window.location.href="../view/homePage.cfm";
                    alert("Login successfull!");
                } else {
                    alert("Login Failed!");
                    $("#loginMsg").text('Something went wrong');
                    return false;
                }
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }

        });
    });
});