<cfoutput>
<!DOCTYPE html>
<html>
<head> 
    <title>Info-Hub</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/style2.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/style.css">
    <script src="./assets/javascript/jquery.min.js"></script> 
    <script src="./assets/javascript/common.js"></script> 
</head>
<body>
    <form class="signUpForm mt-5" id="formTarget" action="" method="post" >
        <nav class="navbar navbarlogIn container-fluid m-0 align-items-center justify-content-between navbar-expand-lg flex-nowrap navbar-dark bg-primary py-0 px-3 px-sm-5 col-12">
            <a class="navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
        </nav>
        <h2 class="py-3 px-5"><b>Sign Up</b></h2>
        <h5 id="signUpSuccess"><b></b></h5>
        <h5 id="signUpFailed"><b></b></h5>            
        <h5 id="signUpMsg"><b></b></h5>
        <input class="signUpInput mx-2 col-10 p-2" type="text" name="strFullname" id="strFullname" placeholder="Enter Full Name">
        <div class="dropdown ms-4 d-flex justify-content-start  pb-2 px-4">
            <select id="strRole" class="form-select form-select-sm" aria-label="Small select example">
                <option selected>Select Role</option>
                <option value="1">User</option>
                <option value="2">Admin</option>
                <option value="3">Editor</option>
            </select>
        </div>          
        <input class="signUpInput mx-2 col-10 p-2" type="text" name="strUsername" id="strUsername" placeholder="Enter Username">
        <input class="signUpInput mx-2 col-10 p-2" type="password" name="strPassword" id="strPassword" placeholder="Enter Password">
        <input class="signUpSubmit" type="submit" name="submit" id="logInBtn"><br>
        <button class="signUpCancel signUpSubmit mb-4"><a title="Clear All" href="?action=main">Cancel</a></button>
    </form>
</body>
</html>
</cfoutput>