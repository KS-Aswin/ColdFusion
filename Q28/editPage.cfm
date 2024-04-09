<cfset variables.idPage = 0>
<cfset variables.pname = "">
<cfset variables.pdesc = "">
<cfset variables.success = "">
<cfset variables.errorMsg = "">
<cfset variables.successMsg = "">

<cfif structKeyExists(url,"idPage")>        
    <cfset variables.idPage = "#url.idPage#">
    <cfset local.objectValueDisplay = createObject("component","controls/pages")>
    <cfset variables.displayData=#local.objectValueDisplay.valueDisplay(url.idPage)# >
    <cfset variables.pname = "#variables.displayData.pname#">
    <cfset variables.pdesc = "#variables.displayData.pdesc#">
</cfif>

<cfif structKeyExists(variables,"idPage") AND variables.idPage GT 0>
    <cfset variables.headings = "Save Page">
    <cfset variables.btnValue = "Save">
<cfelse>    
    <cfset variables.headings = "Add Page">
    <cfset variables.btnValue = "Add">
</cfif>

<cfif structKeyExists(form, "submit")>
    <cfif structKeyExists(form,"pageId") and isNumeric(form.pageId)>
        <cfif structKeyExists(form,"title") or structKeyExists(form,"desc")>
            <cfif len(trim(form.title))eq 0>
                <cfset variables.errorMsg &="Title is required"&"<br>">
            <cfelseif REFind("[^A-Za-z]", form.title)>
                <cfset variables.errorMsg &= "Title must contain String values only" & "<br>">                        
            </cfif>
            <cfif len(trim(form.desc))eq 0>
                <cfset variables.errorMsg &="Description is required"&"<br>">
            </cfif>
            <cfif isNumeric(form.title)>
                <cfset variables.errorMsg &="Title must be a String"&"<br>">
            </cfif>
            <cfif isNumeric(form.desc)>
                <cfset variables.errorMsg &="Description must contain String"&"<br>">
            </cfif>
        </cfif>
        <cfif len(trim(variables.errorMsg)) EQ 0>        
            <cfset variables.objectEditData = createObject("component", "controls/pages")>
            <cfset variables.success = #variables.objectEditData.savePage(form.pageId,form.title,form.desc)#>
        </cfif>
    </cfif>
</cfif>

<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>Pages</title>
    <link rel="stylesheet" type="text/css" href="./assets/style.css">  
    <script src="./assets/jquery.min.js"></script>  
    <script src="./assets/common.js"></script>    
</head>
<body> 
    <h2>#variables.headings#</h2>
    <h2 class="successMsg">#variables.success#</h2>    
    <h5  class="errorMsg">#variables.errorMsg#</h5>
    <form action="" id="target" method="post">   
        <input type="text" name="title" id="title" value="#pname#" placeholder="Enter the Title*">
        <input type="text" name="desc" id="desc" value="#pdesc#" placeholder="Enter the Description*">
        <input type="hidden" name="pageId" id="pageId" value="#variables.idPage#">
        <input type="submit" value="#btnValue#" name="submit" id="submitBtn">
        <button class="cancel"><a href="list.cfm">Back</a></button>
    </form>
</body>
</html>   
</cfoutput>
