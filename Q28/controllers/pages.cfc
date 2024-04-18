<cfcomponent>
    <cffunction  name="savePages" access="remote" retrunType="json" returnformat="json">
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
        <cfargument name="idPage" required="true">
        <cfargument name="title" required="true">
        <cfargument name="desc" required="true">
        <cfif structKeyExists(form, "submit")>
            <cfif structKeyExists(form,"pageId") and isNumeric(form.pageId)>
                <cfif structKeyExists(form,"title") or structKeyExists(form,"desc")>
                    <cfif len(trim(form.title))eq 0 and len(trim(form.desc))eq 0>
                        <cfset variables.errorMsg &="Please enter values in all fields"&"<br>">
                        <cfreturn>
                    </cfif>
                    <cfif len(trim(form.title))eq 0>
                        <cfset variables.errorMsg &="Title is required"&"<br>"> 
                    <cfelseif reFind("\d", form.title)>
                        <cfset variables.errorMsg &= "Title must contain String values only" & "<br>">                
                    </cfif>
                    <cfif len(trim(form.desc))eq 0>
                        <cfset variables.errorMsg &="Description is required"&"<br>">
                    </cfif>
                    <cfif isNumeric(form.desc)>
                        <cfset variables.errorMsg &="Description must contain String"&"<br>">
                    </cfif>
                </cfif>
            </cfif>
        </cfif>
        <cfset variables.objectEditData = createObject("component", "CFC.pages")>
        <cfset variables.success = #variables.objectEditData.savePage(arguments.pageId,arguments.title,arguments.desc)#>
        <cfreturn variables.success>
    </cffunction>
<!---
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

<cfif structKeyExists(form, "submit")>
    <cfif structKeyExists(form,"pageId") and isNumeric(form.pageId)>
        <cfif structKeyExists(form,"title") or structKeyExists(form,"desc")>
            <cfif len(trim(form.title))eq 0 and len(trim(form.desc))eq 0>
                <cfset variables.errorMsg &="Please enter values in all fields"&"<br>">
                <cfreturn>
            </cfif>
            <cfif len(trim(form.title))eq 0>
                <cfset variables.errorMsg &="Title is required"&"<br>"> 
            <cfelseif reFind("\d", form.title)>
                <cfset variables.errorMsg &= "Title must contain String values only" & "<br>">                
            </cfif>
            <cfif len(trim(form.desc))eq 0>
                <cfset variables.errorMsg &="Description is required"&"<br>">
            </cfif>
            <cfif isNumeric(form.desc)>
                <cfset variables.errorMsg &="Description must contain String"&"<br>">
            </cfif>
        </cfif>

        <cfif len(trim(variables.errorMsg)) EQ 0>
            <cffunction  name="savePages" access="remote" retrunType="json" returnformat="json" >
                <cfargument name="idPage" required="true">
                <cfargument name="title" required="true">
                <cfargument name="desc" required="true">
                <cfset variables.obj  = createObject("component", "CFC.pages")>
                <cfset variables.success = #variables.obj.savePage(arguments.idPage,arguments.title,arguments.desc)#>
                <cfreturn variables.success>
            </cffunction>
        </cfif>
        <!---cfif len(trim(variables.errorMsg)) EQ 0>        
            <cfset variables.objectEditData = createObject("component", "CFC.pages")>
            <cfset variables.success = #variables.objectEditData.savePage(form.pageId,form.title,form.desc)#>
        </cfif--->
    </cfif>
</cfif>
--->

</cfcomponent>