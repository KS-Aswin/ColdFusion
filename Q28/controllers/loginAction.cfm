<cfset local.forSignin = createObject("component","CFC.pages").signin()>
<!---cfif structKeyExists(form, "submit") and len(trim(form.user)) GT 0>
    <cfset local.obj = createObject("component", "CFC.pages")>
    <h4>#local.obj.doSignin(form.user, form.pass)#</h4>
</cfif--->