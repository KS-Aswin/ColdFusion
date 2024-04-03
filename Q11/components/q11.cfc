<cfcomponent>
    <cffunction name="multiply" returntype="numeric" access="public">
        <cfargument name="numbers" required="true">
            <cfset local.value = 1>
            <cfloop array="#arguments.numbers#" index="number">
                <cfset local.value =local.value*number>
            </cfloop>
        <cfreturn local.value>
    </cffunction> 
</cfcomponent>