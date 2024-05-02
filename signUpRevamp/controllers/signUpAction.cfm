<cfscript>
    variables.resultMsg = {};
    variables.resultMsg.msg = '';
    variables.resultMsg.color = ''; 
    variables.strFullname = StructKeyExists(form, "strFullname")?form.strFullname:'';
    variables.strRole = StructKeyExists(form, "strFullname")?form.strRole:'';
    variables.strUsername = StructKeyExists(form, "strFullname")?form.strUsername:'';
    variables.strPassword = StructKeyExists(form, "strFullname")?form.strPassword:'';
    variables.strConfirmPassword = StructKeyExists(form, "strFullname")?form.strConfirmPassword:'';
    if (structKeyExists(form, "submit")){
        variables.objSignUp = createObject("component","controllers.signUp").saveSignUp(strFullname = variables.strFullname,strRole = variables.strRole,strUsername = variables.strUsername,strPassword = variables.strPassword,strConfirmPassword = variables.strConfirmPassword);
        variables.resultMsg = variables.objSignUp;
    }
</cfscript>
