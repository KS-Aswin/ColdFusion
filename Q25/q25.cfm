<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/style.css">
    
    <script src="./scripts/jquery.min.js"></script>
    <script src="./scripts/q25.js"></script>
    <title>Document</title>
</head>
<body>
    <h2>ColdFusion & DB</h2>
    <div>
        <form action="q25.cfm" method="post">
            <input type="text" name="text" id="text" placeholder="Enter The Text">            
            <input type="submit" id="submit" name="submit" value="Submit">
        </form>
    </div>
    <cfif structKeyExists(form, "submit")>
            <cfset obj=createObject("component","components.q25")>
            <cfoutput>
                <h4>#obj.word(form.text)#</h4>
            </cfoutput>
        </cfif>
</body>
</html>
