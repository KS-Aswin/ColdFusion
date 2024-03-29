<cfcomponent>
    <cffunction name="mailCheck" access="remote">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        
        <cfquery name="emailCheck" datasource="DESKTOP-89AF345">
            SELECT *
            FROM subscribe
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        
        <cfif emailCheck.recordCount>
            <cfoutput>{"message":"exists"}</cfoutput>
        <cfelse>
            <cfoutput>{"message":"notexists"}</cfoutput>
        </cfif>   
    </cffunction>
    
    <cffunction name="mailUpload" access="public">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        
        <cfquery name = "emailUpload" datasource="DESKTOP-89AF345" >
            INSERT INTO subscribe (fname, email)
            VALUES (
                <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
        
        <cfreturn "Email Uploaded Successfully">
    </cffunction>
</cfcomponent>
