<!DOCTYPE html>
<html>
<head>
    <title>Multiply Numbers</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfoutput>    
    <form action="" method="post">
            <input type="text"  name="data" placeholder="Enter the Key Word" required>
            <input type="submit" name="submit">
    </form>
    <cfif StructKeyExists(form, "submit") and Len(trim(form.data)) GT 0>

        <cfset local.obj = createObject("component","components.q13")>
        <cfset local.inputString = "the quick brown fox jumps over the lazy dog">
        <h3>Found the key word in #local.obj.find(local.inputString, form.data)# times</h3>
        <h2>#local.inputString#</h2>
    <cfelse>
        <h3>Enter Something</h3>
    </cfif>
    
    </cfoutput>
</body>
</html>
