<cfcomponent>
    <cffunction name="display" access="public">
    <cfset result = "">
            <cfloop index="i" from='1' to='3'>
                <cfloop index="j" from="1" to="3">
                    <cfset result &=j+((j-1)*2) + ((i-1))&" ">
                </cfloop>
                    <cfset result &="<br>">
            </cfloop>
        <cfreturn result>
    </cffunction>
</cfcomponent>