
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./assets/style.css">
</head>
<body>
    <cfoutput>
        <h5><a href="adminPage.cfm">Go Back</a></h5>
        <h2>Enter the new values to Update</h2>

        <form action="" method="post" >
            <input type="text" name="newTitle" id="newTitle" placeholder="Enter new Title" required>
            <input type="text" name="newDesc" id="newDesc" placeholder="Enter new Description" required>
            <input type="submit" name="submit">
        </form>

        <cfif structKeyExists(form, "submit")>
            <cfif structKeyExists(URL,"idPage")>
                <cfinvoke  component="controls.pages" method="editData">
                    <cfinvokeargument  name="newTitle"  value="#form.newTitle#">
                    <cfinvokeargument  name="newDesc"  value="#form.newDesc#">
                    <cfinvokeargument  name="idPage"  value="#URL.idPage#">
                </cfinvoke> 
                <cfelse>
                    <cfinvoke  component="controls.pages" method="addData">
                    <cfinvokeargument  name="title"  value="#form.newTitle#">
                    <cfinvokeargument  name="desc"  value="#form.newDesc#">
                </cfinvoke> 
            </cfif>
         </cfif>
    </cfoutput>
</body>
</html>   

