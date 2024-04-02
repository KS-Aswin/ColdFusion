<cfcomponent>
    <cffunction name="multiply" access="public" returntype="string">
        <cfargument name="num1" type="numeric" required="true">
        <cfargument name="num2" type="numeric" required="true">
        <cfargument name="num3" type="numeric" required="false" default="1">
        <cfargument name="num4" type="numeric" required="false" default="1">
        
        <cfset local.result = arguments.num1 * arguments.num2 * arguments.num3 * arguments.num4>
        
        <cfset local.expression = "#arguments.num1#">
        <cfloop from="2" to="4" index="i">
            <cfif arguments["num#i#"] neq 1>
                <cfset local.expression &= " * #arguments["num"&i]#">
            </cfif>
        </cfloop>
        
        <cfreturn "#local.expression# = #local.result#">
    </cffunction>
</cfcomponent>
