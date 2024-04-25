component{
    /*remote any function test() returnFormat="JSON"{
        local.queryTest=createObject("component","models.common").test();
        writeDump(local.queryTest) abort;
    }*/
    remote any function saveSignUp(fullName,role,userName,password) returnFormat="JSON"{
        local.hashedPassword=Hash(password,"MD5");
        local.doSignIn=createObject("component","models.common");
        local.strResponse=local.doSignIn.getSignUpDetails(fullName,role,userName,hashedPassword);
        return local.strResponse;
    }
}    
