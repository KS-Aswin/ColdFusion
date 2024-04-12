<cfset variables.idPage = 0>
<cfset variables.pname = "">
<cfset variables.pdesc = "">
<cfset variables.success = "">
<cfset variables.errorMsg = "">
<cfset variables.successMsg = "">
<cfset variables.list = "0,1,2,3,4,5,6,7,8,9,`,~,!,@,$,%,^,&,*,(,),_,-,+,=,,,.,<,>,/,?,:,;,',[,],{,},|,\,"",##">

<cfif structKeyExists(url,"idPage")>        
    <cfset variables.idPage = "#url.idPage#">
    <cfset local.objectValueDisplay = createObject("component","../models/pages")>
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
            <cfelse> 
                <cfloop index="i" from="1" to="#len(form.title)#">
                    <cfset currentCharacter = mid(form.title, i, 1)>
                    <cfif listFindNoCase(variables.list, currentCharacter)>
                    <!---cfif !((asc(currentCharacter) Gt 64 && asc(currentCharacter) Lt 91)||(asc(currentCharacter) Gt 96 && asc(currentCharacter) Lt 123)||(asc(currentCharacter)EQ 32))--->
                        <cfset variables.errorMsg &= "Title must contain String values only" & "<br>">
                        <cfbreak>
                        
                    </cfif>
                </cfloop>                        
            </cfif>
            <cfif len(trim(form.desc))eq 0>
                <cfset variables.errorMsg &="Description is required"&"<br>">
            </cfif>
            <cfif isNumeric(form.desc)>
                <cfset variables.errorMsg &="Description must contain String"&"<br>">
            </cfif>
        </cfif>
        <cfif len(trim(variables.errorMsg)) EQ 0>        
            <cfset variables.objectEditData = createObject("component", "../models/pages")>
            <cfset variables.success = #variables.objectEditData.savePage(form.pageId,form.title,form.desc)#>
        </cfif>
    </cfif>
</cfif>
