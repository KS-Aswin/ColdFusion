<!DOCTYPE html>
<html>
<head>
    <title>Multiply Numbers</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>  

    <cfoutput>
        <h2>Values : </h2>
        <cfset local.obj = createObject("component", "components.q18")>
        #local.obj.queryPrint()#
    </cfoutput>
    
</body>
</html>
