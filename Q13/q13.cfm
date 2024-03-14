<!DOCTYPE html>
<html>
<head>
    <title>Multiply Numbers</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfoutput>
    <h2>Please enter the character :</h2>
    
    <!-- Debugging output -->
    <form action="" method="post">
            <input type="text"  name="data">
            <input type="submit" name="submit">
    </form>
    <cfif StructKeyExists(form, "submit") and Len(trim(form.data)) GT 0>

        <cfset obj = createObject("component","components.q13")>
        <cfset inputString = "the quick brown fox jumps over the lazy dog">
        <h3>#obj.find(inputString, form.data)#</h3>
        <h3>#inputString#</h3>
    <cfelse>
        <h3>Enter Something</h3>
    </cfif>
    
    </cfoutput>
</body>
</html>
