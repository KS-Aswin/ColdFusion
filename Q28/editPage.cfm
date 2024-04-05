<cfoutput>
    <cfset variables.idPage = 0>
    <cfset variables.pname = "">
    <cfset variables.pdesc = "">

    <cfif structKeyExists(url,"idPage")>        
        <cfset variables.idPage = "#url.idPage#">
        <cfset local.objectValueDisplay = createObject("component","controls/pages")>
        <cfset variables.displayData=#local.objectValueDisplay.valueDisplay(url.idPage)# >
        <cfset variables.pname = "#variables.displayData.pname#">
        <cfset variables.pdesc = "#variables.displayData.pdesc#">
    </cfif>

    <cfif structKeyExists(variables,"pname")>  
        <cfset pname = variables.pname>
    <cfelse> 
        <cfset pname = "">
    </cfif>

    <cfif structKeyExists(variables,"pdesc")>  
        <cfset pdesc = variables.pdesc>
    <cfelse> 
        <cfset pdesc = "">
    </cfif>

    <cfif structKeyExists(form, "submit")>
        <cfif structKeyExists(url,"idPage")>
            <cfset local.objectEditData = createObject("component", "controls/pages")>
            <cfset local.objectEditData.editData(url.idPage,form.title,form.desc)>
        <cfelse>
            <cfset local.objectEditData = createObject("component", "controls/pages")>
            <cfset local.objectEditData.addData(form.title,form.desc)> 
        </cfif>
    </cfif>

</cfoutput>

<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./assets/style.css">
</head>
<body>
    <cfoutput>
        
            <h5><a href="adminPage.cfm">Go Back</a></h5>
            <form action="" method="post" >   
                <input type="text" name="title" id="title" value="#pname#" placeholder="Enter the Title" required>
                <input type="text" name="desc" id="desc" value="#pdesc#" placeholder="Enter the Description" required>
                <input type="submit" name="submit"> 
            </form>

            
    </cfoutput>
</body>
</html>   

