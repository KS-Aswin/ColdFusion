<cfcomponent>
    <cffunction name="processForm" access="public">
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfset session.struct[arguments.key] =arguments.value>	
        
    </cffunction>
</cfcomponent>