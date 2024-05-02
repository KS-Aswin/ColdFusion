<cfscript>
    if (structKeyExists(form, "submit")){
        variables.objExcel = createObject("component","controllers.excel").uploadExcel(file = form.file);
    }
</cfscript>
