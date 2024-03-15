<!DOCTYPE html>
<html>
<head>
    <title>Multiply Numbers</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>  

    <cfoutput>
        <!---row column--->
        <h2>Values : </h2>
        <cfset obj = createObject("component", "components.q18")>
        #obj.queryPrint()#
    </cfoutput>
    
</body>
</html>
