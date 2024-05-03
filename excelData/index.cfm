<cfscript>
    cfparam(name="url.action", default="", pattern="");

    switch(lcase(url.action)){
        case "excel":
            include "/controllers/excelAction.cfm";
            include "/views/excel.cfm";
            break;
        default:
           include "/views/excel.cfm";
        break;
    }
</cfscript>