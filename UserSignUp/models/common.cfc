<cfcomponent>

    <cffunction  name="getSignUpDetails" access="remote"  returnformat="json">
        <cfargument name="fullName" required="true">
        <cfargument name="role" required="true">
        <cfargument name="userName" required="true">
        <cfargument name="hashedPassword" required="true">
        <cftry>
            <cfquery name="newSignUp" datasource="DESKTOP-89AF345">
                insert into userAdmin (uname, pass, role, fullName)
                values(
                    <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.hashedPassword#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.role#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.fullName#" cfsqltype="cf_sql_varchar">
                ) 
            </cfquery>
            <cfreturn {"success":true, "message":"New User added Successfully!"}>
            <cfcatch type="exception">
                <cfreturn {"error":"An unexpected error occured!"}>
            </cfcatch>
        </cftry>
    </cffunction>

    <cffunction  name="checkUserExists" access="remote"  returnformat="json">
        <cfargument name="fullName" required="true">
        <cfargument name="role" required="true">
        <cfargument name="userName" required="true">
        <cfargument name="password" required="true">
        <cfquery name="tableName" datasource="DESKTOP-89AF345">
            select uname
            from userAdmin
            where uname = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
            and role = <cfqueryparam value="#arguments.role#" cfsqltype="cf_sql_varchar">
        </cfquery>
        
        <cfif tableName.recordCount>
            <cfreturn {"success":false, "message":"The username is already existing!"}>
        <cfelse>
            <cfreturn {"success":true, "message":""}>
        </cfif>
    </cffunction>

</cfcomponent>
