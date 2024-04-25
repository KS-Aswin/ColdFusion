$(document).ready(function () {

    $('#logInBtn').click(function () {
        var user = $('#strUsername').val().trim();
        var pass = $('#strPassword').val().trim();
        if (user === '' || pass === '') {
            $("#loginFailed").html('Please fill values in all fields!').css('color','red');
        } else {
            $.ajax({
                url: '../controllers/pages.cfc?method=doLogin',
                type: 'post',
                data: {
                    user: user,
                    pass: pass
                },
                dataType: "json",
                success: function (response) {
                    if (response.message === "exists") {
                        $("#loginFailed").text('Login Success').css('color','green');
                        setTimeout(function () {
                            window.location.href = "../view/homePage.cfm";
                        }, 1000);
                    } else {
                        $("#loginFailed").text('Invalid username or password').css('color','red');
                    }
                },
                error: function (xhr, status, error) {
                    alert("An error occurred: " + error);
                }
            });
        }
        return false;
    });

    $('#target').on("submit", function () {
        var intPageId = $('#intPageId').val().trim();
        var strTitle = $('#strTitle').val().trim();
        $(".errorMsg").html("");
        if (validation()) {
            $.ajax({
                url: '../models/pages.cfc?method=checkPageExists',
                type: 'post',
                data: {
                    intPageId: intPageId,
                    strTitle: strTitle
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
        return false;
    });

    $('.deleteLink').click(function () {
        var intPageId = $(this).attr("data-id");
        var _this = $(this);
        if (!confirm("Do you want to delete this file?")) {
            return false;
        }
        $.ajax({
            url: '../models/pages.cfc?method=deletePage',
            type: 'post',
            data: {
                intPageId: intPageId
            },
            dataType: "json",
            success: function (response) {
                $(_this).parents("tr").remove();
                //$("#"+idPage).remove(); 
            },
            error: function (xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });
        return false;
    });
});

function doSave() {
    var strTitle = $('#strTitle').val().trim();
    var strDescription = $('#strDescription').val().trim();
    var intPageId = $('#intPageId').val().trim();
    $(".errorMsg").html("");
    $.ajax({
        url: '../controllers/pages.cfc?method=savePages',
        type: 'post',
        data: {
            intPageId: intPageId,
            strTitle: strTitle,
            strDescription: strDescription
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

function validation() {
    var strTitle = $("#strTitle").val().trim();
    var strDescription = $("#strDescription").val().trim();
    var errorMsg = "";
    if (/\d/.test(strTitle)) {
        errorMsg += "Title must contain String values only!" + "<br>";
    }
    if (strTitle == "" && strDescription == "") {
        errorMsg += "Please enter values in all fields!" + "<br>";
    } else if (strTitle == "") {
        errorMsg += "Please enter Title!" + "<br>";
    } else if (strDescription == "") {
        errorMsg += "Please enter Description!" + "<br>";
    } else if (!isNaN(strDescription)) {
        errorMsg += "Enter an Description containing Letters!" + "<br>";
    }
    if (errorMsg.length) {
        $(".errorMsg").html(errorMsg);
        return false;
    }
    return true;
}

function redirectToPages() {
    setTimeout(function () {
        window.location.href = "../view/list.cfm";
    }, 1000);
}