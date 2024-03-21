<cfcomponent>
    <cffunction name="mailCheck" access="remote">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        
        <cfquery name="emailCheck" datasource="DESKTOP-89AF345">
            SELECT COUNT(*) AS emailCount
            FROM subscribe
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        
        <cfif emailCheck.emailCount GT 0>
            <cfreturn {"message":"exists"}>
        <cfelse>
            <cfreturn {"message":"notexists"}>
        </cfif>   
    </cffunction>
    
    <cffunction name="mailUpload" access="public">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        
        <cfquery datasource="DESKTOP-89AF345">
            INSERT INTO subscribe (fname, email)
            VALUES (
                <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
        
        <cfreturn "email uploaded successfully">
    </cffunction>
</cfcomponent>
