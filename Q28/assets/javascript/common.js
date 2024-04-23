$(document).ready(function () {

	$('#logInBtn').click(function () {
        var user = $('#strUsername').val().trim();
        var pass = $('#strPassword').val().trim();
        $("#loginMsg").html('');
        if (user === '' || pass === '') {
            $("#loginMsg").html('');
            $("#loginMsg").html('Please fill values in all fields!');
        } else {
            $("#loginMsg").html('');
            $.ajax({
                url: '../models/pages.cfc?method=doSignin',
                type: 'post',
                data: {
                    user: user,
                    pass: pass
                },
                dataType: "json",
                success: function (response) {
                    if (response.message === "exists") {
                        $("#loginSuccess").text('Login Success');
                        setTimeout(function () {
                            window.location.href = "../view/homePage.cfm";
                        }, 1000);
                    } else {
                        $("#loginMsg").html('');
                        $("#loginFailed").text('Invalid username or password');
                    }
                },
                error: function (xhr, status, error) {
                    alert("An error occurred: " + error);
                }
            });
        }
        return false;
    });

	$('#target').on("submit",function() {
        var idPage = $('#pageId').val().trim();
        var title = $('#title').val().trim(); 
        $(".errorMsg").html("");
		if(validation()){
			$.ajax({
				url: '../models/pages.cfc?method=pageCounts',
				type: 'post',
				data:  {idPage:idPage,title: title},
				dataType:"json",
				success: function(response) {
					if(response.success){
                        doSave();
						redirectToPages(); 
					} else {
                        $(".errorMsg").html(response.message ); 
					}
				},
				error: function(xhr, status, error) {
					alert("An error occurred: " + error);
				}
			});
		}       
		return false;
    });	 

	$('.deleteLink').click(function() {
        var idPage =$(this).attr("data-id"); 
        var _this= $(this);
        if(!confirm("Do you want to delete this file?")){
            return false;
        }
        $.ajax({
            url: '../models/pages.cfc?method=deletePage',
            type: 'post',
            data:  {idPage: idPage},
            dataType:"json",
            success: function(response) {
                $(_this).parents("tr").remove();
                //$("#"+idPage).remove(); 
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });
        return false;
    });
});

function doSave(){
    var title = $('#title').val().trim(); 
    var desc = $('#desc').val().trim();
    var idPage = $('#pageId').val().trim();
    $(".errorMsg").html("");
    $.ajax({
        url: '../controllers/pages.cfc?method=savePages',
        type: 'post',
        data:  {idPage: idPage , title: title , desc: desc},
        dataType:"json",
        success: function(response) { 
            $(".errorMsg").html("");
            if(response.success){
                $(".successMsg").text(response.message );
                redirectToPages();  
            } else {
                $(".errorMsg").html(response.message );    
            }
        },
        error: function(xhr, status, error) {
            alert("An error occurred: " + error);
        }
    });
}

function validation() {
    var title = $("#title").val().trim();
    var desc = $("#desc").val().trim();
    var errorMsg="";
    if (/\d/.test(title)) {
        errorMsg +="Title must contain String values only!"+"<br>";    
    }
    if (title == "" && desc == "" ) {
        errorMsg +="Please enter values in all fields!"+"<br>"; 
    } else if (title == "" ){
        errorMsg +="Please enter Title!"+"<br>"; 
    }else if (desc == "" ){
        errorMsg +="Please enter Description!"+"<br>"; 
    }else if (!isNaN(desc)) {
        errorMsg +="Enter an Description containing Letters!"+"<br>"; 
    }
    if(errorMsg.length) {
        $(".errorMsg").html(errorMsg);
        return false;
    }
    return true;
}

function  redirectToPages() {
    setTimeout(function() {
        window.location.href="../view/list.cfm";
    }, 1000);
}