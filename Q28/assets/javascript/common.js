$(document).ready(function () {
	$("form").submit(function () {
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
		if(errorMsg.length) {
			$(".errorMsg").html(errorMsg);
			return false;
		}
	});	
});
function containText(desc) {
	return /^\d+$/.test(desc);
}
