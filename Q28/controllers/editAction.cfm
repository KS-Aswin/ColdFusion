<cfset variables.idPage = 0>
<cfset variables.pname = "">
<cfset variables.pdesc = "">
<cfset variables.success = "">
<cfset variables.errorMsg = "">
<cfset variables.successMsg = "">

<cfif structKeyExists(url,"idPage")>        
    <cfset variables.idPage = "#url.idPage#">
    <cfset local.objectValueDisplay = createObject("component","CFC.pages")>
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