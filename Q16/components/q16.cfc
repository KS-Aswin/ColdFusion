<!--- components/q11.cfc --->
<cfcomponent>
    <cffunction name="array" access="public" returnType="string">
        <cfset myArray = [1, 4, 7, 2, 5, 8, 3, 6, 9]>
        <cfset row = 1>
        <cfset column = 1>
        <cfloop array="#myArray#" index="myValue">
            <cfif column EQ 3>
                <cfoutput>#myValue#<br></cfoutput>
                <cfset column = 1>
                <cfset row = row + 1>
            <cfelse>
                <cfoutput>#myValue#</cfoutput>
                <cfset column = column + 1>
            </cfif>
        </cfloop>
    </cffunction>
</cfcomponent>
