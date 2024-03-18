<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
    <script src="./scripts/q14.js"></script>
</head>
<body>
    <cfoutput>
    <form action="q14.cfm" method="post">
            <input type="text" placeholder="Enter file Name" name="imgName" id="imgName" required>
            <input type="text" placeholder="Enter file Description" name="imgDesc" id="imgDesc" required>
            <input type="file" name="imgFile" id="imgFile" required>
            <input type="submit" name="submit" onclick="printFile()">
    </form>
    <cfif StructKeyExists(form, "submit")>
        <cfset imgComponent = createObject("component", "components.q14")>
        <cfset imgComponent.insertImage(form.imgName, form.imgDesc, form.imgFile)>
    </cfif>
    </cfoutput>
</body>
</html>
