<cfoutput>
<!DOCTYPE html>
<html>
<head> 
    <title>Info-Hub</title>
    <meta charset="UTF-8">
	<meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
    <link rel = "stylesheet" type = "text/css" href = "./assets/css/bootstrap.min.css">
    <link rel = "stylesheet" type = "text/css" href = "./assets/css/style2.css">
    <link rel = "stylesheet" type = "text/css" href = "./assets/css/style.css">
</head>
<body>
    <form class = "signUpForm my-5" id ="formTarget" action = "?action=signUp" method = "post" >
        <h2 class = "p-5"><b>Add Excel File</b></h2>
        <div class="px-5 d-flex flex-column col-12 justify-content-start align-items-start mb-4">
            <input type="file" name="file" id="file"  required>
        </div>
        <div class="d-flex col-12 flex-column gap-3 justify-content-start align-items-center mb-4">
            <input type="submit" class="signUpSubmit" name="submit">
            <button class = "signUpCancel signUpSubmit " type = "reset"><a title = "Clear All" href = "?action = main">Cancel</a></button>
        </div>
    </form>
</body>
</html>
</cfoutput>