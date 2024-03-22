
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfoutput>
        
         <cfif structKeyExists(form, "submit")>
            <cfinvoke  component="components.q28" method="editData" returnvariable="printEditData">
                <cfinvokeargument  name="newTitle"  value="#form.newTitle#">
                <cfinvokeargument  name="newDesc"  value="#form.newDesc#">
                <cfinvokeargument  name="idPage"  value="#URL.idPage#">
            </cfinvoke> 
            #printEditData#
        </cfif>    
        
        <!--- <cfset obj = createObject("component", "components.q28")>
        <cfset editData=#obj.editData(local.idPage,form.newTitle,form.newDesc)#> --->
        <h5><a href="q28_adminEditor.cfm">Go Back</a></h5>
        <h2>Enter the new values to Update</h2>

        <form action="" method="post" >
            <input type="text" name="newTitle" id="newTitle" placeholder="Enter new Title" required>
            <input type="text" name="newDesc" id="newDesc" placeholder="Enter new Description" required>
            <input type="submit" name="submit">
        </form>
 
    </cfoutput>
</body>
</html>   

