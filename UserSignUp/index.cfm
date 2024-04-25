<cfscript>
    cfparam(name="url.action", default="main", pattern="");

    switch(lcase(url.action)){
        case "main":
            include "/controllers/main/signUpAction.cfc";
            include "/views/main.cfm";
            break;

        // The provided event could not be matched.
        default:
           // throw( type="InvalidEvent" );
           include "/views/main.cfm";
        break;
    }
</cfscript>