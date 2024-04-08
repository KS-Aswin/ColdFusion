
<cfset local.forSignin = createObject("component","controls/pages").signin()>

<!DOCTYPE html>
<html>
<head>
    <title>Pages</title>
    <link rel="stylesheet" type="text/css" href="./assets/style.css">
</head>
<body>
    <cfoutput>

        <form action="login.cfm" method="post" >
            <h2>Log In</h2>
            <input type="text" name="user" id="user" placeholder="Enter Username" required>
            <input type="password" name="pass" id="pass" placeholder="Enter Password" required>
            <input type="submit" name="submit">
        </form>
        <cfif structKeyExists(form, "submit") and len(trim(form.user)) GT 0>
            <cfset local.obj = createObject("component", "controls.pages")>
            <h4>#local.obj.doSignin(form.user, form.pass)#</h4>
        </cfif>
        
    </cfoutput>
</body>
</html>