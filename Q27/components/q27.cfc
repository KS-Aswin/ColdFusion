<cfcomponent>
    <cffunction name="signup" access="public" returntype="string">
        <cfargument name="user" type="string" required="true">
        <cfargument name="pass" type="string" required="true">
        

        <cfif arguments.user EQ "user" AND arguments.pass EQ "user">
            <cfset session.login = false>
            <cflocation url="q27_welcome.cfm">
        <cfelse>       
            <cfreturn "Invalid Username or Password!">
        </cfif>
    </cffunction>
</cfcomponent>
