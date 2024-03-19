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
    <cfif StructKeyExists(form, "submit") and Len(trim(form.imgFile)) GT 0>
        <cfinvoke  component="components.q14" method="insertImage">
            <cfinvokeargument  name="imgName"  value="#form.imgName#">
            <cfinvokeargument  name="imgDesc"  value="#form.imgDesc#">
            <cfinvokeargument  name="imgFile"  value="#form.imgFile#">
        </cfinvoke>
    </cfif>
    <form action="q14.cfm" method="post" enctype="multipart/form-data">
            <input type="text" placeholder="Enter file Name" name="imgName" id="imgName" required>
            <input type="text" placeholder="Enter file Description" name="imgDesc" id="imgDesc" required>
            <input type="file" name="imgFile" id="imgFile" accept=".jpg, .jpeg, .png, .gif" required>
            <input type="submit" name="submit" onclick="printFile()">
    </form>
    
    </cfoutput>
</body>
</html>
