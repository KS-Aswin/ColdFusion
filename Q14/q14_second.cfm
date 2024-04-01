<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/style.css">
    <title>Document</title>
</head>
<body>
    <div>
        <cfset local.imgId=URL.imgId>
        <cfset local.obj = createObject("component","components/q14")>
        <cfset sendID=#local.obj.displaySecond(local.imgId)#>
        <cfoutput>
            <cfloop query="sendID">
                <a href="q14_third.cfm?imgId=#sendID.imgId#">#sendID.imgName#</a>
                <img src="./assets/#imgFile#" width="20" height="20" alt="thumbnail">
            </cfloop>
        </cfoutput>
    </div>
</body>
</html>