<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/style.css">
    <title>Document</title>
</head>
<body>
    <div>
        <h2>ColdFusion & DB</h2>
    </div>
    <div>
        <form action="q25.cfm" method="post">
            <textarea name="data" placeholder="Enter the data" required></textarea>
            <input type="submit"  name="submit">
        </form>
    </div>
    <div>
        <cfoutput>
            <cfif StructKeyExists(form, "data")>
                <cfset local.obj=createObject("component","components/q25")>
                    <h4>#local.obj.insertingData(form.data)#</h4>
            </cfif>
        </cfoutput>
    </div>
</body>
</html>