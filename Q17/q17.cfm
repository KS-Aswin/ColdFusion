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
            <label for="num">Enter a number</label>
            <input type="text"  name="num" id="num">
            <input type="submit" name="submit" onclick="printNum()">
    </form>
    <cfif StructKeyExists(form, "submit") and isNumeric(num)>

        <cfset local.obj = createObject("component","components.q17")>
        <h3>#local.obj.print(form.num)#</h3>
    
    </cfif>
    
    </cfoutput>
</body>
</html>
