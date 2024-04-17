$(document).ready(function () {

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

	$('#target').on("submit",function() {
        $(".errorMsg").html("");
        var title = $('#title').val().trim(); 
        var desc = $('#desc').val().trim();
        var idPage = $('#pageId').val().trim();
		if(validation()){
			$.ajax({
				url: '../models/pages.cfc?method=savePage',
				type: 'post',
				data:  {idPage: idPage , title: title , desc: desc},
				dataType:"json",
				success: function(response) {
					if (response.message === "edited"){
						$(".successMsg").text('Edited Successfully');
						timeOut();  
					} else if (response.message === "exist"){
						$(".successMsg").text('The title is already existing!');
						timeOut();
					}else if (response.message === "added"){
						$(".successMsg").text('Added Successfully');
						timeOut();
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

	function  timeOut() {
        setTimeout(function() {
            window.location.href="../view/list.cfm";
        }, 1000);
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
});
