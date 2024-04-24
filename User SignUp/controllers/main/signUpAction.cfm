<cfscript>
    remote any function test() returnFormat="JSON"{
        local.queryTest=createObject("component","signUp.common").test();
        writeDump(local.queryTest) abort;
    }
    remote any function doLogin(strUsername,strPassword,strFullname,strRole) returnFormat="JSON"{
        variables.password=Hash(arguments.strPassword,"MD5");
        variables.doLogin=createObject("component","signUp.common").saveSignUp(strUsername,variables.password,strFullname,strRole);
        return variables.doLogin;
    }
     test();
</cfscript>
    
