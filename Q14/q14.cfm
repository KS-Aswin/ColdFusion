<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
    <script src="./scripts/q14.js"></script>
    <title>Document</title>
</head>
<body>
    <div>
        <form action="q14.cfm" method="post"  enctype="multipart/form-data">
            <input type="text" name="imgName" placeholder="Enter Image Name">
            <input type="text" name="imgDesc" placeholder="Enter Image Description">
            <input type="file" name="imgFile" id="imgFile" accept=".jpg, .jpeg, .png, .gif" required>
            <input type="submit" value="Upload Image" onclick="printFile()">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form, "imgFile")>
            <cfinvoke component="components/q14" method="insertImage">
                <cfinvokeargument name="imgName" value="#form.imgName#">
                <cfinvokeargument name="imgDesc" value="#form.imgDesc#">
                <cfinvokeargument name="imgFile" value="#form.imgFile#">                
            </cfinvoke>
        </cfif>
    </div>
</body>
</html>


