<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfset local.imgId = URL.imgId>
    <cfset q14Component = createObject("component", "components.q14")>
    <cfoutput>
        #q14Component.displayImage(local.imgId)#
    </cfoutput>
</body>
</html>
