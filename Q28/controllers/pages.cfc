component {
    remote any function savePages(idPage,title,desc) returnFormat="JSON"{
        local.error='';
        if (len(trim(title))eq 0 and len(trim(desc))eq 0){
            local.error &="Please enter values in all fields"&"<br>";
        }
        if (len(trim(title))eq 0){
            local.error &="Title is required"&"<br>";
        }else if (reFind("\d", title)){
            local.error &= "Title must contain String values only" & "<br>";
        }
        if (len(trim(desc))eq 0){
            local.error &="Description is required"&"<br>";
        }
        if (isNumeric(desc)){
            local.error &="Description must contain String"&"<br>";
        }
        if (len(trim(local.error)) EQ 0){
            local.object=createObject("component","CFC.pages");
            local.save=local.object.savePage(idPage,title,desc);
            return local.save;  
        }
    } 
}