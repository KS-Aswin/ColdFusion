component {
    remote any function savePages(intPageId,strTitle,strDescription) returnFormat="JSON"{
        local.error='';
        if (len(trim(strTitle))eq 0 and len(trim(strDescription))eq 0){
            local.error &="Please enter values in all fields"&"<br>";
        }
        if (len(trim(strTitle))eq 0 ){
            local.error &=" Please enter Title"&"<br>";
        }else if (len(trim(strTitle))gt 40 ){
            local.error &= "Title must be less than 40" & "<br>";
        }else if (reFind("\d", strTitle)){
            local.error &= "Title must contain String values only" & "<br>";
        }
        if (len(trim(strDescription))eq 0){
            local.error &=" Please enter Description"&"<br>";
        }
        if (isNumeric(strDescription)){
            local.error &="Description must contain String"&"<br>";
        }
        if (len(trim(local.error)) EQ 0){
            local.objPages=createObject("component","CFC.pages");
            local.strResponse =local.objPages.savePage(intPageId,strTitle,strDescription);
            return local.strResponse ;  
        }else{
            return {"success":false, "message":"#local.error#"};
        }
    } 

    public void function checkLogin(){
        if(session.login){
           cflocation(url="../view/homePage.cfm");
        }
    }

    remote any function doLogOut(){
        session.login=false;
        cflocation(url="../view/login.cfm");
    }

    remote any function doLogin(user,pass) returnFormat="JSON"{
        local.password=Hash(arguments.pass,"MD5");
        local.doLogin=createObject("component","CFC.pages").doSignin(user,pass);
        return local.doLogin;
    }
}