<!DOCTYPE html>
<html>
<head>
    <title>Multiply Numbers</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">

</head>
<body>
    <cfset local.mathOps = new components.q11()>
    
    <cfset local.res1 = local.mathOps.multiply(1, 2)>
    <cfoutput><h2>#local.res1#</h2></cfoutput>
    
    <cfset local.res2 = local.mathOps.multiply(1, 2, 3)>
    <cfoutput><h2>#local.res2#</h2></cfoutput>
    
    <cfset local.res3 = local.mathOps.multiply(1, 2, 3, 4)>
    <cfoutput><h2>#local.res3#</h2></cfoutput>
</body>
</html>
