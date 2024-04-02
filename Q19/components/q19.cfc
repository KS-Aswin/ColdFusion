<cfcomponent>
    <cffunction name="cookieCount" access="public" returnType="numeric">
        <cfset  local.visit = 0>
        <cfif isDefined("cookie.VisitsCounter")>
            <cfset local.visit = cookie.VisitsCounter>
        </cfif>
        <cfset local.visit +=1 >
        <cfcookie name="VisitsCounter" value="#local.visit#">
        <cfreturn local.visit>
    </cffunction>
</cfcomponent>


    