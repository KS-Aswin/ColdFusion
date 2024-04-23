<cfset variables.idPage = 0>
<cfset variables.pName = "">
<cfset variables.pDesc = "">
<cfset variables.success = "">
<cfset variables.errorMsg = "">
<cfset variables.successMsg = "">

<cfif structKeyExists(url,"idPage")>        
    <cfset variables.idPage = "#url.idPage#">
    <cfset local.valuePage = createObject("component","CFC.pages")>
    <cfset variables.displayData=#local.valuePage.valuesPage(url.idPage)# >
    <cfset variables.pName = "#variables.displayData.pName#">
    <cfset variables.pDesc = "#variables.displayData.pDesc#">
</cfif>

<cfif structKeyExists(variables,"idPage") AND variables.idPage GT 0>
    <cfset variables.heading = "Save the Page">
    <cfset variables.btnValue = "Save">
<cfelse>    
    <cfset variables.heading = "Add new Page">
    <cfset variables.btnValue = "Add">
</cfif>