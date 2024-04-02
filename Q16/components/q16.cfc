<cfcomponent>
    <cffunction name="display" access="public">
    <cfset local.result = "">
            <cfloop index="i" from='1' to='3'>
                <cfloop index="j" from="1" to="3">
                    <cfset local.result &=j+((j-1)*2) + ((i-1))&" ">
                </cfloop>
                    <cfset local.result &="<br>">
            </cfloop>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>