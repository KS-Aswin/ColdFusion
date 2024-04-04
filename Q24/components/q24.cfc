<cfcomponent>
    <cffunction name="mailCheck" access="remote" returnformat="json">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        
        <cfquery name="emailCheck" datasource="DESKTOP-89AF345">
            SELECT *
            FROM subscribe
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        
        <cfif emailCheck.recordCount >
            <cfreturn  {"message":"existing"} >
        <cfelse>
            <cfreturn  {"message":"notexisting"} >
        </cfif>   
    </cffunction>
    
    <cffunction name="mailUpload" access="remote" returnformat="json">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        
        <cfquery name = "emailUpload" datasource="DESKTOP-89AF345" >
            INSERT INTO subscribe (fname, email)
            VALUES (
                <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
        <cfreturn  {"message":"success"} >
        
    </cffunction>
</cfcomponent>
