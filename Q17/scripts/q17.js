
function printNum() {
    var num = document.getElementById("num").value.trim();

    if (num == "") {
    	alert("Please enter a value!");
    	return;
	}

    if (isNaN(num)) {
    	alert("Enter numeric values!");
    	return;
    }

	var n = parseFloat(num);
}