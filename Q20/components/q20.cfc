<cfcomponent>

    <cffunction name="processCaptcha" returntype="string">
        <cfargument name="captcha" type="string" required="true">

        <cfset var result = "">
        
        <cfif arguments.captcha EQ session.captchaInput>
            <cfset result = "Email Address Successfully Subscribe our Newsletter.">
        <cfelse>
            <cfset result = "Enter the Same Captcha">
        </cfif>
        
        <cfreturn result>

       
    </cffunction>

</cfcomponent>
