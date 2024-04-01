<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/style.css">
    <title>Document</title>
</head>
<body>
    <cfoutput>
        <div>
            <h2>Row Column Values</h2>
            <cfset obj=createObject("component","components/q16")>
            <h4>#obj.display()#</h4>
        </div>
    </cfoutput>
    
<body>
</html>