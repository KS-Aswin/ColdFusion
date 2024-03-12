<cfcomponent>
    <cffunction name="processNumbers" returntype="string">
        <cfargument name="numbers" type="string" required="true">
        <cfset numbersArray = ListToArray(arguments.numbers)>
        <cfset divisibleNumbers = []>
        
        <cfloop array="#numbersArray#" index="num">
            <cfif num MOD 3 EQ 0>
                <cfset arrayAppend(divisibleNumbers, num)>
            </cfif>
        </cfloop>
        
        <cfif ArrayLen(divisibleNumbers) EQ 0>
            <cfreturn "None"> <!-- Return empty string if the length is zero -->
        <cfelse>
            <cfreturn ArrayToList(divisibleNumbers, " ")> <!-- Return the list if it's not empty -->
        </cfif>
    </cffunction>
</cfcomponent>
