
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfif session.login EQ true>
        <h2>You have Successfully Logged In</h2>
        <h5><a href="q27.cfm">Log Out</a></h5>
        <cfset session.login=false>
    <cfelse>
        <cflocation url="q27.cfm">
    </cfif>
</body>
</html>   

