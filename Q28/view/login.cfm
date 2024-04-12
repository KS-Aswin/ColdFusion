<cfset local.forSignin = createObject("component","CFC.pages").signin()>
<!DOCTYPE html>
<html>
<head>
    <title>Pages</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
    <script src="./assets/jquery.min.js"></script>  
    <script src="./assets/common.js"></script>   
</head>
<body>
    <cfoutput>
        <form action="./login.cfm" method="post" >
            <nav class="navbar container-fluid m-0 align-items-center justify-content-between navbar-expand-lg flex-nowrap navbar-dark bg-primary px-3 px-sm-5 col-12">
                <a class="navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
                <a class="nav-link" title="Go to Home" href="./welcomePage.cfm">Home</a>
            </nav>
            <h2 class="pt-4 px-5"><b>Log In</b></h2>
            <img class="card-img-top saveFile" src="../assets/images/login.png" alt="Card image cap">
            <input class=" mx-2 col-10 p-2" type="text" name="user" id="user" placeholder="Enter Username">
            <input class=" mx-2 col-10 p-2" type="password" name="pass" id="pass" placeholder="Enter Password">
            <input class="" type="submit" name="submit" id="logInBtn"><br>
            <button class="cancel mb-4"><a title="Clear All" href="./login.cfm">Cancel</a></button>
        </form>
        <cfif structKeyExists(form, "submit") and len(trim(form.user)) GT 0>
            <cfset local.obj = createObject("component", "models/pages")>
            <h4>#local.obj.doSignin(form.user, form.pass)#</h4>
        </cfif>
    </cfoutput>
</body>
</html>