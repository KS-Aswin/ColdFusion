<cfcomponent>
    <cffunction name="print" access="public">
        <cfargument name="num" type="numeric" required="true">
        <cfset local.output = []>
        <cfloop index="i" from="1" to="#arguments.num#">
            <cfif i mod 2 EQ 0>
                <cfset arrayAppend(local.output, {number=i , color ="blue"})>
            <cfelse>
                <cfset arrayAppend(local.output, {number=i , color ="green"})>
            </cfif>
        </cfloop>
        <cfreturn local.output>
    </cffunction>
</cfcomponent>
