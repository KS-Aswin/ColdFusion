$(document).ready(function () {

	$("#dol").on("keypress", preventNonNumeric);
	$("#cents").on("keypress", preventNonNumeric);
	$("#n0").on("keypress", preventNonNumeric);
	$("#n1").on("keypress", preventNonNumeric);
	$("#n2").on("keypress", preventNonNumeric);
	$("#inputFieldTwo").on("keypress", preventNonNumeric);
	$("#day").on("keypress", preventNonNumeric);
	$("#datepicker").on("keypress", preventNonNumeric);

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

	$('.authInput').keyup(function (e) {
		if (this.value.length === this.maxLength) {
			let next = $(this).data('next');
			$('#n' + next).focus();
		}
	});


	$(function () {
		$("#datepicker").datepicker({
			dateFormat: "yy-mm-dd",
			showOn: "button",
			buttonText: "<img src='./assets/cal.png' alt='Pick a date.' class='calendar-icon'>",
			buttonImageOnly: true,
			buttonImage: "./assets/cal.png",
			onSelect: function (dateText, inst) {
				var selectedDate = $(this).datepicker('getDate');
				if (selectedDate != null) {
					var month = selectedDate.getMonth() + 1;
					var day = selectedDate.getDate();
					var year = selectedDate.getFullYear();
					$('.dateInputOne').eq(0).val(month);
					$('.dateInputOne').eq(1).val(day);
					$('.dateInputTwo').val(year);
				}
			}
		});
	});


	$('.dateInputTwo').click(function (event) {
		event.preventDefault();
	});

	$('.calendar-icon').click(function () {
		$("#datepicker").datepicker("show");
	});


	$("#submitBtn").click(function () {
		var fname = $("#fname").val().trim();
		var lname = $("#lname").val().trim();
		var dDown = $("#positionSelect").val().trim();
		var eMail = $("#email").val().trim();
		var url = $("#urls").val().trim();
		var phFirst = $("#n0").val().trim();
		var phMid = $("#n1").val().trim();
		var phLast = $("#n2").val().trim();
		var month = $("#inputFieldTwo").val().trim();
		var day = $("#day").val().trim();
		var year = $("#datepicker").val().trim();

		if (dDown == "") {
			$("#hiddenError").show();
			$("#impTxtHidden").show();
			$("#pos").css("background-color", "#ffdfdf");
			$("#pos").css("color", "#d50000");

			$("#positionSelect").on(
				"click",
				function () {
					$("#pos").css("background-color", "#fff7c0");
				});
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

			$("#fname").on(
				"click",
				function () {
					$("#cInfo").css("background-color", "#fff7c0");
				});


		} else {
			$("#hiddenError").hide();
			$("#nameTxtHidden").hide();
			$("#cInfo").css("background-color", "#fff");
			$("#cInfo").css("color", "#000000");

		}

		var urlRegex = /^(?:([A-Za-z]+):)?(\/{0,3})([0-9.\-A-Za-z]+)(?::(\d+))?(?:\/([^?#]*))?(?:\?([^#]*))?(?:#(.*))?$/;
		if (url == "") {
			$("#hiddenError").show();
			$("#portTxtHidden").show();
			$("#pFolio").css("background-color", "#ffdfdf");
			$("#pFolio").css("color", "#d50000");

			$("#urls").on(
				"click",
				function () {
					$("#pFolio").css("background-color", "#fff7c0");
				});
		} else if (!urlRegex.test(url)) {
			$("#hiddenError").show();
			$("#portTxtHidden").text("Please enter a valid url in http://website.com format.");
			$("#portTxtHidden").show();
			$("#pFolio").css("background-color", "#ffdfdf");
			$("#pFolio").css("color", "#d50000");

			$("#urls").on(
				"click",
				function () {
					$("#pFolio").css("background-color", "#fff7c0");
				});


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

			$("#email").on(
				"click",
				function () {
					$("#mailE").css("background-color", "#fff7c0");
				});
		} else if (!emailRegex.test(eMail)) {
			$("#hiddenError").show();
			$("#mailTxtHidden").text("Please enter a valid email address.");
			$("#mailTxtHidden").show();
			$("#mailE").css("background-color", "#ffdfdf");
			$("#mailE").css("color", "#d50000");

			$("#email").on(
				"click",
				function () {
					$("#mailE").css("background-color", "#fff7c0");
				});
		} else {
			$("#hiddenError").hide();
			$("#mailTxtHidden").hide();
			$("#mailE").css("background-color", "#ffffff");
			$("#mailE").css("color", "#000000");
		}


		$("#phNum").on(
			"click",
			function () {
				$("#phNum").css("background-color", "#fff7c0");
			});


		if (phFirst == "" || phMid == "" || phLast == "") {
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


		$("#cal").on(
			"click",
			function () {
				$("#cal").css("background-color", "#fff7c0");
			}
		);


		if (month == "" || month > 12 || month < 1 || day == "" || day > 31 || day < 1 || year == "" || year < 1000) {
			$("#hiddenError").show();
			$("#calTxtHidden").show();
			$("#cal").css("background-color", "#ffdfdf");
			$("#cal").css("color", "#d50000");


		} else {
			$("#hiddenError").hide();
			$("#calTxtHidden").hide();
			$("#cal").css("background-color", "#fff");
			$("#cal").css("color", "#000000");
		}
        if (fname === "" ||lname === "" ||dDown === "" ||eMail === "" ||url === "" ||phFirst === "" ||phMid === "" ||phLast === "" ||month === "" || month > 12 || month < 1 || day > 31 || day < 1 || day === "" ||year === "" || year <1000 ) {
            return; 
        }
		$.ajax({
			type: "POST",
			url: "components/q23.cfc?method=uploadData",
			data: {
				dDown: $("#positionSelect").val().trim(),
				month: $("#inputFieldTwo").val().trim(),
				day: $("#day").val().trim(),
				year: $("#datepicker").val().trim(),
				fname: $("#fname").val().trim(),
				lname: $("#lname").val().trim(),
				eMail: $("#email").val().trim(),
				phFirst: $("#n0").val().trim(),
				phMid: $("#n1").val().trim(),
				phLast: $("#n2").val().trim()
			},
			success: function (response) {
				alert('Form Uploaded Successfully');
                location.reload();
			},
			error: function (xhr, status, error) {
				alert("Error: " + error);
			}
		});

	});

});