
<!DOCTYPE html>
<html>
<head>
    <title>Multiply Numbers</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
    <script src="./scripts/q17.js"></script>
</head>
<body>
    <cfoutput>
    
    
    <form action="" method="post">
        <input type="submit" name="submit">
    </form>
    <cfif StructKeyExists(form, "submit")>

        <cfset local.obj = createObject("component","components.q19")>
        <h3>#local.obj.cookieCount()#</h3>
    
    </cfif>
    
    </cfoutput>
</body>
</html>
