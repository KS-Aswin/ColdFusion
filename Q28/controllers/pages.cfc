<!---cfcomponent>
    <cffunction name = "savePages" access="remote"  returnFormat="json">
        <cfargument name="idPage" required="true">
        <cfargument name="title" required="true">
        <cfargument name="desc" required="true">
        <cfset local.error=''>
        <cfif len(trim(arguments.title))eq 0 and len(trim(arguments.desc))eq 0>
            <cfset local.error &="Please enter values in all fields"&"<br>">
            <cfreturn>
        </cfif>
        <cfif len(trim(arguments.title))eq 0>
            <cfset local.error &="Title is required"&"<br>"> 
        <cfelseif reFind("\d", arguments.title)>
            <cfset local.error &= "Title must contain String values only" & "<br>">                
        </cfif>
        <cfif len(trim(arguments.desc))eq 0>
            <cfset local.error &="Description is required"&"<br>">
        </cfif>
        <cfif isNumeric(arguments.desc)>
            <cfset local.error &="Description must contain String"&"<br>">
        </cfif>
        <cfif len(trim(local.error)) EQ 0>
            <cfset variables.obj=createObject("component","CFC.pages")>
            <cfset variables.save=#variables.obj.savePage(idPage,title,desc)#>
            <cfreturn variables.save>
        </cfif>
     </cffunction>
</cfcomponent--->
<cfscript>
    remote json function savePages(required integer idPage,required string title,required string desc){
        local.error='';
        if (len(trim(arguments.title))eq 0 and len(trim(arguments.desc))eq 0){
            local.error &="Please enter values in all fields"&"<br>";
            return;
        }
        if (len(trim(arguments.title))eq 0){
            local.error &="Title is required"&"<br>";
        }else if (reFind("\d", arguments.title)){
            local.error &= "Title must contain String values only" & "<br>";
        }
        if (len(trim(arguments.desc))eq 0){
            local.error &="Description is required"&"<br>";
        }
        if (isNumeric(arguments.desc)){
            local.error &="Description must contain String"&"<br>";
        }
        if (len(trim(local.error)) EQ 0){
            variables.obj=createObject("component","CFC.pages");
            variables.save=variables.obj.savePage(idPage,title,desc);
        }
    } 
</cfscript> 