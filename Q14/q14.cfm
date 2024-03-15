
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
        <cfset obj = createObject("component", "components.q14")>
        <h2>#obj.imgTextDesc()#</h2>    
    </cfif>
    <form action="" method="post">
        <input type="text" name="imgName" placeholder="Enter Image Name" required><br>
        <input type="text" name="imgDesc" placeholder="Enter Image Description" required><br>
        <input type="file" name="img" id="file" required><br>        
        <input type="submit" name="submit" value="Submit"  onclick="checkSize()">
    </form>
    <h2 id="errorMsg"></h2>
    </cfoutput>

</body>
</html>
