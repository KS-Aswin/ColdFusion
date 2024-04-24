<cfscript>
    cfparam(name="url.action", default="main", pattern="");

    switch(lcase(url.action)){
        case "main":
            include "/views/main.cfm";

            break;
        case "saveSignUp":
            include "/controllers/main/signUpAction.cfm";
            break;

        // The provided event could not be matched.
        default:
           // throw( type="InvalidEvent" );
           include "/views/welcome.cfm";
        break;
    }
</cfscript>