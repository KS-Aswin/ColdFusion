<cfscript>
    variables.resultMsg = {};
    variables.resultMsg.msg = '';
    variables.resultMsg.color = '';
    if (structKeyExists(form, "submit")){
        variables.objSignUp = createObject("component","controllers.signUp").saveSignUp(strFullname = form.strFullname,strRole = form.strRole,strUsername = form.strUsername,strPassword = form.strPassword,strConfirmPassword = form.strConfirmPassword);
        variables.resultMsg = variables.objSignUp;
    }
</cfscript>
