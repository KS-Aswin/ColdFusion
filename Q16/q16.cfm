<!DOCTYPE html>
<html>
<head>
    <title>Multiply Numbers</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>  

    <cfoutput>
        <!---row column--->
        <h2>Row Column Values : </h2>
        <cfset obj = createObject("component", "components.q16")>
        <h3>#obj.array()#</h3>
    </cfoutput>
    
</body>
</html>
