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
    <form class = "signUpForm " id = "formTarget" action = "?action=signUp" method = "post" >
        <nav class = "navbar navbarlogIn container-fluid m-0 align-items-center justify-content-between navbar-expand-lg flex-nowrap navbar-dark bg-primary py-0 px-3 px-sm-5 col-12">
            <a class = "navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
        </nav>
        <h2 class = "py-3 px-5"><b>Sign Up</b></h2>
        <p class = "#variables.resultMsg.color# messeges"><b>#variables.resultMsg.msg#</b></p>
        <input class = "signUpInput mx-2 col-10 p-2 mt-1" type = "text" name = "strFullname" id = "strFullname" value = "#variables.strFullname#" placeholder = "Enter Full Name">
        <div class = "dropdown ms-4 d-flex justify-content-start  pb-2 px-4">
            <select id = "strRole" name = "strRole" class = "form-select form-select-sm">
                <option selected value="select">Select Role</option>
                <option value = "user" <cfif variables.strRole eq "user">selected</cfif> >User</option>
                <option value = "admin" <cfif variables.strRole eq "admin">selected</cfif> >Admin</option>
                <option value = "editor" <cfif variables.strRole eq "editor">selected</cfif>  >Editor</option>
            </select>
        </div>          
        <input class = "signUpInput mx-2 col-10 p-2" type = "text" value = "#variables.strUsername#" name = "strUsername" id = "strUsername" placeholder = "Enter Username">
        <input class = "signUpInput mx-2 col-10 p-2" type = "password"  name = "strPassword" id = "strPassword" placeholder = "Enter Password">
        <input class = "signUpInput mx-2 col-10 p-2" type = "password"  name = "strConfirmPassword" id = "strConfirmPassword" placeholder = "Confirm Password">
        <input class = "signUpSubmit" type = "submit" name = "submit"  id = "logInBtn"><br>
        <div class="d-flex col-12 flex-column justify-content-start align-items-center mb-4">
            <button class = "signUpCancel signUpSubmit " type = "reset"><a title = "Clear All" href = "?action = main">Cancel</a></button>
            <p class="text-center text-muted mb-0">Have already an account? <a href = "../Q28/view/login.cfm" class = "fw-bold text-body"><u>Login here</u></a></p>
        </div>
    </form>
</body>
</html>
</cfoutput>