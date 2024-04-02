<cfcomponent>

    <cffunction name="processCaptcha" returntype="string">
        <cfargument name="captcha" type="string" required="true">

        <cfset  local.result = "">
        
        <cfif arguments.captcha EQ session.captchaInput>
            <cfset local.result = "Email Address Successfully Subscribe to our Newsletter.">
        <cfelse>
            <cfset local.result = "Enter the Same Captcha!..">
        </cfif>
        
        <cfreturn local.result>

       
    </cffunction>

</cfcomponent>
