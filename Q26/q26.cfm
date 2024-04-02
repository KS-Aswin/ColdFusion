<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfoutput>
    
    <h2>Count of words inside a text File</h2>
    <form action="q26.cfm" method="post" enctype="multipart/form-data">
            <input type="file" name="file" id="file"  required>
            <input type="submit" name="submit">
    </form>
    <cfif structKeyExists(form, "file") and !isNull(form.file)>
        <cfset local.obj = createObject("component", "components.q26").printCount(form.file)>
        <cfoutput>
            <h4>#local.obj#</h4>
        </cfoutput>
    </cfif>
    
    </cfoutput>
</body>
</html>
