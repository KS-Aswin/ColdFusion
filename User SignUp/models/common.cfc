<cfcomponent>
    <cffunction  name="test" access="remote"  returnformat="json" >
        
        
            <cfquery name="newSignUp" datasource="DESKTOP-89AF345">
                select uname from userAdmin
            </cfquery>
            <cfreturn newSignUp> 
    
    </cffunction>
    <cffunction  name="saveSignUp" access="remote"  returnformat="json" datasource="DESKTOP-89AF345">
        <cfargument name="strUsername" required="true">
        <cfargument name="#variables.password#" required="true">
        <cfargument name="strRole" required="true">
        <cfargument name="strFullname" required="true">
        <cftry>
            <cfquery name="newSignUp" >
                update userAdmin
                set uname = <cfqueryparam value="#arguments.strUsername#" cfsqltype="cf_sql_varchar">,
                    pass = <cfqueryparam value="#arguments.variables.password#" cfsqltype="cf_sql_varchar">,
                    role = <cfqueryparam value="#arguments.strRole#" cfsqltype="cf_sql_varchar">,
                    fullName = <cfqueryparam value="#arguments.strFullname#" cfsqltype="cf_sql_varchar">  
            </cfquery>
                
            <cfcatch type="exception">
                <cfreturn {"error":"An unexpected error occured!"}>
            </cfcatch>
        </cftry>
    </cffunction>
</cfcomponent>
