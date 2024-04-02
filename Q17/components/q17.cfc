<cfcomponent>
    <cffunction name="print" access="public" returnType="string">
        <cfargument name="num" type="numeric" required="true">
        <cfset local.output = "">
        <cfloop index="i" from="1" to="#num#">
            <cfif i mod 2 EQ 0>
                <cfset local.color = "green">
            <cfelse>
                <cfset local.color = "blue">
            </cfif>
            <cfset local.output &= "<span style='color: #local.color#;'>#i#</span><br>">
        </cfloop>
        <cfreturn local.output>
    </cffunction>
</cfcomponent>
