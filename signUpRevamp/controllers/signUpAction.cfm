<cfset variables.resultMsg={}>
<cfset variables.resultMsg.msg=''>
<cfset variables.resultMsg.color=''>

<cfif structKeyExists(form, "submit")>
    <cfset variables.objSignUp = createObject("component","controllers.signUp").saveSignUp(form.strFullname,form.strRole,form.strUsername,form.strPassword,form.strConfirmPassword)>
    <cfset variables.resultMsg=variables.objSignUp>
</cfif>
