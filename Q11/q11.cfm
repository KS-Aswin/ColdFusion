<!--- index.cfm --->
<!DOCTYPE html>
<html>
<head>
    <title>Multiply Numbers</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">

</head>
<body>
    <cfset mathOps = new components.q11()>
    
    <!--- Call the multiply function with different arguments and display the results --->
    <cfset res1 = mathOps.multiply(1, 2)>
    <cfoutput><h2>#res1#</h2></cfoutput>
    
    <cfset res2 = mathOps.multiply(1, 2, 3)>
    <cfoutput><h2>#res2#</h2></cfoutput>
    
    <cfset res3 = mathOps.multiply(1, 2, 3, 4)>
    <cfoutput><h2>#res3#</h2></cfoutput>
</body>
</html>
