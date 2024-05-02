component{
    remote any function saveSignUp(strFullname,strUsername,strPassword,strConfirmPassword,strRole) returnFormat="JSON"{
        local.errorMsg = ''; 
        if(len(trim(strFullname)) EQ 0 OR len(trim(strUsername)) EQ 0 OR len(trim(strPassword)) EQ 0 OR len(trim(strConfirmPassword)) EQ 0 OR strRole eq "select"){
            local.errorMsg &= "Please enter values in all fields!<br>";
        }
        if(REFind('\d', strFullname)){
            local.errorMsg &= "Fullname must contain string value only!<br>";
        }
        if(strPassword NEQ strConfirmPassword){
            local.errorMsg &= "Password and Confirm Password does not match!<br>";
        } 
        if(local.errorMsg EQ ''){
            local.objUser = createObject("component","models.signUp");
            local.checkUserDetails = local.objUser.checkUserExists(strUsername=strUsername);
            if(local.checkUserDetails.success){     
                local.strPassword = Hash(strPassword,"MD5");
                local.saveUserDetails = local.objUser.saveSignUp(strFullname = strFullname,strRole = strRole,strUsername = strUsername,strPassword = local.strPassword);
                if(local.saveUserDetails.success){
                    return {"msg":"New User added Successfully","color":"success"};  
                }else{
                    return {"msg":"Something went wrong!","color":"warning"};
                }
            }else{
                return {"msg":"Username already existing","color":"warning"};
            }
        }else{
            return {"msg":"#local.errorMsg#","color":"warning"}
        }
    }
}    
