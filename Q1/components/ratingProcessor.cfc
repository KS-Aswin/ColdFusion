<!--- RatingLogic.cfc --->
<cfcomponent>
    <cffunction name="getRating" returntype="string">
        <cfargument name="rating" type="numeric" required="true">
        
        <cfif arguments.rating EQ 5>
            <cfset ratingResult = " Very good">
        <cfelseif arguments.rating EQ 4>
            <cfset ratingResult = " Good">
        <cfelseif arguments.rating EQ 3>
            <cfset ratingResult = " Fair">
        <cfelseif arguments.rating EQ 1 OR arguments.rating EQ 2>
            <cfset ratingResult = " Ok">
        <cfelse>
            <cfset ratingResult = "Please enter a valid number between 1 and 5.">
        </cfif>
        
        <cfreturn ratingResult>
    </cffunction>
</cfcomponent>
