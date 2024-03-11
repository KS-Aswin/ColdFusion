<cfcomponent>
    <cffunction name="processRating" access="remote" returntype="string">
        <cfargument name="rating" type="numeric" required="true">
        
        <cfif ARGUMENTS.rating EQ 5>
            <cfset VARIABLES.ratingResult = "Rating: Very good">
        <cfelseif ARGUMENTS.rating EQ 4>
            <cfset VARIABLES.ratingResult = "Rating: Good">
        <cfelseif ARGUMENTS.rating EQ 3>
            <cfset VARIABLES.ratingResult = "Rating: Fair">
        <cfelseif ARGUMENTS.rating EQ 1 OR ARGUMENTS.rating EQ 2>
            <cfset VARIABLES.ratingResult = "Rating: Ok">
        <cfelse>
            <cfset VARIABLES.ratingResult = "Please enter a valid number between 1 and 5.">
        </cfif>
        
        <cfreturn VARIABLES.ratingResult>
    </cffunction>
</cfcomponent>
 