$(document).ready(function () {
	$("form").submit(function (event) {
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
		}else if (containText(desc)) {
			errorMsg +="Enter an Description containing Letters!"+"<br>"; 
		}
		if(errorMsg.trim().length) {
			$(".errorMsg").html(errorMsg);
			return false;
		}
	});
	$("#logInBtn").click(function (event) {
		var user = $("#user").val().trim();
		var pass = $("#pass").val().trim();
		if (user == "" && pass == "" ) {
			alert("Please enter values in all fields!"); 
			return false;
    	} else if (user == "" ){
			alert("Please enter Username!");
			return false; 
		}else if (pass == "" ){
			alert("Please enter Password!");
			return false; 
		}	
	});
	
});
function containText(desc) {
	return /^\d+$/.test(desc);
}
