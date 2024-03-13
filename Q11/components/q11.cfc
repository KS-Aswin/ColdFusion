<!--- components/q11.cfc --->
<cfcomponent>
    <cffunction name="multiply" access="public" returntype="string">
        <cfargument name="num1" type="numeric" required="true">
        <cfargument name="num2" type="numeric" required="true">
        <cfargument name="num3" type="numeric" required="false" default="1">
        <cfargument name="num4" type="numeric" required="false" default="1">
        
        <!--- Calculate the result --->
        <cfset result = arguments.num1 * arguments.num2 * arguments.num3 * arguments.num4>
        
        <!--- Construct the string with the multiplication expression --->
        <cfset expression = "#arguments.num1#">
        <cfloop from="2" to="4" index="i">
            <cfif arguments["num#i#"] neq 1>
                <cfset expression &= " * #arguments["num"&i]#">
            </cfif>
        </cfloop>
        
        <!--- Return the result and the expression string --->
        <cfreturn "#expression# = #result#">
    </cffunction>
</cfcomponent>
