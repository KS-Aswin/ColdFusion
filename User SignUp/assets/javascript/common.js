$(document).ready(function () {
    $('#formTarget').on("submit",function () {
        var user = $('#strUsername').val().trim();
        var pass = $('#strPassword').val().trim();
        var pass = $('#strRole').val().trim();
        var fname = $('#strFullname').val().trim();
        console.log("hhhh");
        
        $("#signUpMsg").html('');
        if (user === '' || pass === '' || fname==='') {
            $("#signUpMsg").html('Please fill values in all fields!');
            return false;
        } else{
            $.ajax({
                url: '../controllers/main/signUpAction.cfm?method=doLogin',
                type: 'post',
                data: {
                    strUsername: strUsername,
                    strPassword: strPassword,
                    strRole: strRole,
                    strFullname: strFullname
                },
                dataType: "json",
                success: function (response) {
                    if (response.success) {
                        doSave();
                        redirectToPages();
                    } else {
                        $(".errorMsg").html(response.message);
                    }
                },
                error: function (xhr, status, error) {
                    alert("An error occurred: " + error);
                }
            });
        }
    });
});

function doSave() {
    var strUsername = $('#strUsername').val().trim();
    var strPassword = $('#strPassword').val().trim();
    var strFullname = $('#strFullname').val().trim();

    $(".errorMsg").html("");
    $.ajax({
        url: '../models/common.cfc?method=saveSignUp',
        type: 'post',
        data: {
            strUsername: strUsername,
            strPassword: strPassword,
            strFullname: strFullname
        },
        dataType: "json",
        success: function (response) {
            $(".errorMsg").html("");
            if (response.success) {
                $(".successMsg").text(response.message);
                redirectToPages();
            } else {
                $(".errorMsg").html(response.message);
            }
        },
        error: function (xhr, status, error) {
            alert("An error occurred: " + error);
        }
    });
}