<cfscript>
    cfparam(name="url.action", default="", pattern="");

    switch(lcase(url.action)){
        case "signUp":
            // include "/controllers/signUpAction.cfm";
            include "/views/excel.cfm";
            break;
        default:
           include "/views/excel.cfm";
        break;
    }
</cfscript>