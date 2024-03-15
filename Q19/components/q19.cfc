<cfcomponent>
    <cffunction name="cookieCount" access="public" returnType="numeric">
        <cfset  visit = 0>
        <cfif isDefined("cookie.VisitsCounter")>
            <cfset visit = cookie.VisitsCounter>
        </cfif>
        <cfset visit +=1 >
        <cfcookie name="VisitsCounter" value="#visit#">
        <cfreturn visit>
    </cffunction>
</cfcomponent>


    