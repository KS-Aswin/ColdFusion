<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/style.css">
    <title>Document</title>
</head>
<body>
        <cfset local.imgId=URL.imgId>
        <cfset local.obj = createObject("component","components/q14")>
        <cfset imgDisplay=#local.obj.displayImage(local.imgId)#>
        <cfoutput>
            <cfloop query="imgDisplay">
                <h2>Image Name</h2>
                <h5>#imgDisplay.imgName#</h5>
                <h2>Image Description</h2>
                <h5>#imgDisplay.imgDesc#</h5>
                <h2>Image</h2>
                <img src="./assets/#imgFile#">
            </cfloop>
        </cfoutput>
</body>
</html>