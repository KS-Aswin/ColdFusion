<cfcomponent>

    <cffunction  name="saveSignUp" access="remote"  returnformat="json">
        <cfargument name="strFullname" required="true">
        <cfargument name="strRole" required="true">
        <cfargument name="strUsername" required="true">
        <cfargument name="strPassword" required="true">
        
        <cftry>
            <cfquery name="newSignUp" datasource="DESKTOP-89AF345">
                insert into userAdmin (uname, pass, role, fullName)
                values(
                    <cfqueryparam value="#arguments.strUsername#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.strPassword#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.strRole#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.strFullname#" cfsqltype="cf_sql_varchar">
                ) 
            </cfquery>
            <cfreturn {"success":true}>
            <cfcatch type="exception">
                <cfreturn {"error":"An unexpected error occured!"}>
            </cfcatch>
        </cftry>
    </cffunction>

    <cffunction  name="checkUserExists" access="remote"  returnformat="json">
        <cfargument name="strUsername" required="true">
        <cfquery name="tableName" datasource="DESKTOP-89AF345">
            select uname
            from userAdmin
            where uname = <cfqueryparam value="#arguments.strUsername#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif tableName.recordCount>
            <cfreturn {"success":false}>
        <cfelse>
            <cfreturn {"success":true}>
        </cfif>
    </cffunction>

</cfcomponent>
