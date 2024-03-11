<cfcomponent>
    <cffunction name="processNumbers" access="remote" returntype="string">
        <cfargument name="numbers" type="string" required="true">
        <cfset numbersArray = ListToArray(arguments.numbers)>
        <cfset divisibleNumbers = []>
        
        <cfloop array="#numbersArray#" index="num">
            <cfif num MOD 3 NEQ 0>
                <cfcontinue> 
            </cfif>
            <cfset arrayAppend(divisibleNumbers, num)>
        </cfloop>
        
        <cfset VARIABLES.divisibleNumbers = ArrayToList(divisibleNumbers, " ")>
        <cfif ListLen(VARIABLES.divisibleNumbers) EQ 0>
            <cfreturn "No number is Divisible by Three"> <!-- Return empty string if the length is zero -->
        <cfelse>
            <cfreturn VARIABLES.divisibleNumbers> <!-- Return the list if it's not empty -->
        </cfif>
    </cffunction>
</cfcomponent>
