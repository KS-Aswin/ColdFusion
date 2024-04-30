// For client Side Validation
$(document).ready(function () {
    $('#formTarget').on("submit",function () {
        var fullName = $('#strFullname').val().trim();
        var role = $('#strRole').val().trim();
        var userName = $('#strUsername').val().trim();
        var password = $('#strPassword').val().trim();         
        $("#signUpMsg").html('');       
        $("#signUpMsg").html('');
        if (validation()) {
            $.ajax({
                url: './models/signUpAction.cfc?method=checkUserExists',
                type: 'post',
                data: {
                    fullName: fullName,
                    role: role,
                    userName: userName,
                    password: password
                },
                dataType: "json",
                success: function (response) {
                    if (response.success) {
                        doSave();
                    } else {
                        $("#signUpMsg").html(response.message);
                    }
                },
                error: function (xhr, status, error) {
                    alert("An error occurred: " + error);
                }
            });
        }
        return false;
    });
});
function validation() {
    var fullName = $('#strFullname').val().trim();
    var role = $('#strRole').val().trim();
    var userName = $('#strUsername').val().trim();
    var password = $('#strPassword').val().trim();
    var confirmPassword = $('#strConfirmPassword').val().trim();
    var errorMsg = "";
    if (fullName == "" || (role == "" || role == "select") || userName == "" || password == "") {
        errorMsg += "Please enter values in all fields!" + "<br>";
    } 
    if (password != confirmPassword) {
        errorMsg += "Password and Confirm Password does not match!" + "<br>";
    }
    if (!validatePasswordPolicy(password)) {
        errorMsg += "Password must contain at least 8 characters"+ "<br>" +"including digits and special characters.!" + "<br>";
    }
    if (errorMsg.length) {
        $("#signUpMsg").html(errorMsg).css('color','red');
        return false;
    }
    return true;
}
function doSave() {
    var fullName = $('#strFullname').val().trim();
    var role = $('#strRole').val().trim();
    var userName = $('#strUsername').val().trim();
    var password = $('#strPassword').val().trim();
    $.ajax({
        url: '../UserSignUp/controllers/main/signUpAction.cfc?method=saveSignUp',
        type: 'post',
        data: {
            fullName: fullName,
            role: role,
            userName: userName,
            password: password
        },
        dataType: "json",
        success: function (response) {
            if (response.success) {
                $("#signUpMsg").text(response.message).css('color','green');
            }
        },
        error: function (xhr, status, error) {
            alert("An error occurred: " + error);
        }
    });
}
function validatePasswordPolicy(password) {
    var passwordRegex = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-zA-Z]).{8,}$/;
    return passwordRegex.test(password);
 }