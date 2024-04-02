
<cfapplication name="MyApplication" sessionmanagement="true">

<!DOCTYPE html>
<html>
<head>
    <title>ColdFusion Structure Example</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>

    <cfoutput>
    <cfif structKeyExists(form, "submit")>
        <cfset local.obj = createObject("component", "components.q20")>
        <h2>#local.obj.processCaptcha(form.captcha,session.captchaInput)#</h2>    
    </cfif>
    <form action="q20.cfm" method="post">
        <input type="text" name="mail" placeholder="Email Address" required><br>

        <cfset session.captchaInput = RandRange(0, 9999)>
        <cfimage action="captcha"  text="#session.captchaInput#">
        
        <input type="text" name="captcha" placeholder="Enter Captcha" required><br>
        
        <input type="submit" name="submit" value="Submit">
    </form>
    
    </cfoutput>

</body>
</html>
