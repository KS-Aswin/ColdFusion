$(document).ready(function(){

    $("#dol").on("keypress", preventNonNumeric);
    function preventSpecialCharacters(event) {
        var charCode = event.which || event.keyCode;
        var charStr = String.fromCharCode(charCode);
        var allowedChars = /^[a-zA-Z0-9\s]+$/;
        return allowedChars.test(charStr);
    }
    function preventNonNumeric(event) {
        var charCode = event.which || event.keyCode;
        var charStr = String.fromCharCode(charCode);
        var allowedNumbers = /^[0-9]+$/;
        return allowedNumbers.test(charStr);
    }

    $("#cents").on("keypress", preventNonNumeric);
    function preventSpecialCharacters(event) {
        var charCode = event.which || event.keyCode;
        var charStr = String.fromCharCode(charCode);
        var allowedChars = /^[a-zA-Z0-9\s]+$/;
        return allowedChars.test(charStr);
    }
    function preventNonNumeric(event) {
        var charCode = event.which || event.keyCode;
        var charStr = String.fromCharCode(charCode);
        var allowedNumbers = /^[0-9]+$/;
        return allowedNumbers.test(charStr);
    }
    
    $("#phFirst").on("keypress", preventNonNumeric);
        function preventSpecialCharacters(event) {
            var charCode = event.which || event.keyCode;
            var charStr = String.fromCharCode(charCode);
            var allowedChars = /^[a-zA-Z0-9\s]+$/;
            return allowedChars.test(charStr);
        }
        function preventNonNumeric(event) {
            var charCode = event.which || event.keyCode;
            var charStr = String.fromCharCode(charCode);
            var allowedNumbers = /^[0-9]+$/;
            return allowedNumbers.test(charStr);
        }

        $("#phMid").on("keypress", preventNonNumeric);
        function preventSpecialCharacters(event) {
            var charCode = event.which || event.keyCode;
            var charStr = String.fromCharCode(charCode);
            var allowedChars = /^[a-zA-Z0-9\s]+$/;
            return allowedChars.test(charStr);
        }
        function preventNonNumeric(event) {
            var charCode = event.which || event.keyCode;
            var charStr = String.fromCharCode(charCode);
            var allowedNumbers = /^[0-9]+$/;
            return allowedNumbers.test(charStr);
        }

        $("#phLast").on("keypress", preventNonNumeric);
        function preventSpecialCharacters(event) {
            var charCode = event.which || event.keyCode;
            var charStr = String.fromCharCode(charCode);
            var allowedChars = /^[a-zA-Z0-9\s]+$/;
            return allowedChars.test(charStr);
        }
        function preventNonNumeric(event) {
            var charCode = event.which || event.keyCode;
            var charStr = String.fromCharCode(charCode);
            var allowedNumbers = /^[0-9]+$/;
            return allowedNumbers.test(charStr);
        }
    $("#submitBtn").click(function(){
        var fname = $("#fname").val().trim();
        var lname = $("#lname").val().trim();
        var dDown = $("#positionSelect").val().trim();
        var eMail = $("#email").val().trim();
        var url = $("#urls").val().trim();
        var dol = $("#dol").val().trim();
        var cents = $("#cents").val().trim();
        var phFirst = $("#phFirst").val().trim();
        var phMid = $("#phMid").val().trim();
        var phLast = $("#phLast").val().trim();

        if (dDown == "") {
            $("#hiddenError").show();
            $("#impTxtHidden").show();
            $("#pos").css("background-color", "#ffdfdf");
            $("#pos").css("color", "#d50000");
        } else {
            $("#hiddenError").hide();
            $("#impTxtHidden").hide();
            $("#pos").css("background-color", "#fff");
            $("#pos").css("color", "#000000");
        }

        if (fname == "" || fname.length <= 1 || lname == "") {
            $("#hiddenError").show();
            $("#nameTxtHidden").show();
            $("#cInfo").css("background-color", "#ffdfdf");
            $("#cInfo").css("color", "#d50000");
            $(".fLnameText").css("color", "#000000");

            
        } else {
            $("#hiddenError").hide();
            $("#nameTxtHidden").hide();
            $("#cInfo").css("background-color", "#fff");
            $("#cInfo").css("color", "#000000");
        }


        

        
        
        var urlRegex=/^(?:([A-Za-z]+):)?(\/{0,3})([0-9.\-A-Za-z]+)(?::(\d+))?(?:\/([^?#]*))?(?:\?([^#]*))?(?:#(.*))?$/;
        if(url==""){
            $("#hiddenError").show();
            $("#portTxtHidden").show();
            $("#pFolio").css("background-color", "#ffdfdf");
            $("#pFolio").css("color", "#d50000");
        } else if(!urlRegex.test(url)){
            $("#hiddenError").show();
            $("#portTxtHidden").text("Please enter a valid url in http://website.com format.");
            $("#portTxtHidden").show();
            $("#pFolio").css("background-color", "#ffdfdf");
            $("#pFolio").css("color", "#d50000");
        } else {
            $("#hiddenError").hide();
            $("#portTxtHidden").hide();
            $("#pFolio").css("background-color", "#ffffff");
            $("#pFolio").css("color", "#000000");
        }

        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (eMail === "") {
            $("#hiddenError").show();
            $("#mailTxtHidden").show();
            $("#mailE").css("background-color", "#ffdfdf");
            $("#mailE").css("color", "#d50000");
        } else if (!emailRegex.test(eMail)) {
            $("#hiddenError").show();
            $("#mailTxtHidden").text("Please enter a valid email address.");
            $("#mailTxtHidden").show();
            $("#mailE").css("background-color", "#ffdfdf");
            $("#mailE").css("color", "#d50000");
        } else {
            $("#hiddenError").hide();
            $("#mailTxtHidden").hide();
            $("#mailE").css("background-color", "#ffffff");
            $("#mailE").css("color", "#000000");
        }

        
      


        if (phFirst == "" || phMid == "" || phLast=="") {
            $("#hiddenError").show();
            $("#phTxtHidden").show();
            $("#phNum").css("background-color", "#ffdfdf");
            $("#phNum").css("color", "#d50000");
        } else {
            $("#hiddenError").hide();
            $("#phTxtHidden").hide();
            $("#phNum").css("background-color", "#fff");
            $("#phNum").css("color", "#000000");
        }

        
        

        if (fname !== "" && fname.length > 1 && lname !== "" && dDown !== "" && eMail !== "") {
            alert("Registration completed!");
        }
    });
    
    
    
     
    
});
