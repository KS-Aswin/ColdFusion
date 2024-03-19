
<cfapplication name="MyApplication" sessionmanagement="true">

<!DOCTYPE html>
<html>
<head>
    <title>ColdFusion Structure Example</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>

    <cfoutput>
    <cfif structKeyExists(form, "submit") and Len(trim(form.name) GT 0)>
        <cfinvoke  component="components.q21" method="sendWish">
            <cfinvokeargument  name="name"  value="#form.name#">
            <cfinvokeargument  name="mail"  value="#form.mail#">
            <cfinvokeargument  name="wishes"  value="#form.wishes#">
            <cfinvokeargument  name="img"  value="#form.img#">
        </cfinvoke>    
    </cfif>
    <form action="q21.cfm" method="post" enctype="multipart/form-data">
        <input type="text" name="name" placeholder="Baby Name " required><br>
        
        <input type="text" name="mail" placeholder="Enter Email" required><br>
        
        <textarea name="wishes" rows="4" cols="38" required></textarea>

        <input type="file" name="img" required><br>
        
        <input type="submit" name="submit" value="Submit">
    </form>
    
    </cfoutput>

</body>
</html>
