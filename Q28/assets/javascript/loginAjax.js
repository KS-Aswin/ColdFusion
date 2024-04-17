$(document).ready(function() {
    $('#logInBtn').click(function() {
        var user = $('#user').val().trim(); 
        var pass = $('#pass').val().trim();
        if (user === ''|| pass ==='' ){
            $("#loginMsg").html('Please fill values in all fields!'); 
            setTimeout(function() {
                window.location.href="../view/login.cfm";
            }, 1500);
        }else{
            $.ajax({
                url: '../models/pages.cfc?method=doSignin',
                type: 'post',
                data:  {user: user , pass:pass},
                dataType:"json",
                success: function(response) {
                    if (response.message === "exists"){ 
                        $("#loginSuccess").text('Login Success');
                        setTimeout(function() {
                            window.location.href="../view/homePage.cfm";
                        }, 1000);
                    } else {
                        $("#loginFailed").text('Invalid username or password');
                    }
                },
                error: function(xhr, status, error) {
                    alert("An error occurred: " + error);
                }
            });
        }
        return false;
    });
});