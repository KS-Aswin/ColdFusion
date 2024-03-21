<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfoutput>
        <h2>Log In</h2>
        <form action="q27.cfm" method="post" >
            <input type="text" name="user" id="user" placeholder="Enter Username" required>
            <input type="password" name="pass" id="pass" placeholder="Enter Password" required>
            <input type="submit" name="submit">
        </form>
        <cfif structKeyExists(form, "submit") and len(trim(form.user)) GT 0>
            <cfset obj = createObject("component", "components.q27")>
            <h4>#obj.signup(form.user, form.pass)#</h4>
        </cfif>
    </cfoutput>
</body>
</html>
