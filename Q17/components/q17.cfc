<cfcomponent>
    <cffunction name="print" access="public" returnType="string">
        <cfargument name="num" type="numeric" required="true">
        <cfset output = "">
        <cfloop index="i" from="1" to="#num#">
            <cfif i mod 2 EQ 0>
                <cfset color = "green">
            <cfelse>
                <cfset color = "blue">
            </cfif>
            <cfset output &= "<span style='color: #color#;'>#i#</span><br>">
        </cfloop>
        <cfreturn output>
    </cffunction>
</cfcomponent>
