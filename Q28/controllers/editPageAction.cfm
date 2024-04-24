<cfset variables.intPageId = 0>
<cfset variables.strTitle = "">
<cfset variables.strDescription = "">
<cfset variables.success = "">
<cfset variables.errorMsg = "">
<cfset variables.successMsg = "">
<cfset variables.heading = "Add new Page">
<cfset variables.btnValue = "Add">

<cfif structKeyExists(url,"pageId")>        
    <cfset variables.intPageId = "#url.pageId#">
    <cfset local.valuePage = createObject("component","CFC.pages")>
    <cfset variables.displayData=#local.valuePage.getPagesDetails(url.pageId)# >
    <cfset variables.strTitle = "#variables.displayData.pname#">
    <cfset variables.strDescription = "#variables.displayData.pdesc#">
</cfif>
<cfif structKeyExists(variables,"intPageId") AND variables.intPageId GT 0>
    <cfset variables.heading = "Save the Page">
    <cfset variables.btnValue = "Save">    
</cfif>