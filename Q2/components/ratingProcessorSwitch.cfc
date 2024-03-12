<cfcomponent>
    <cffunction name="processRating"  returntype="string">
        <cfargument name="rating" type="numeric" required="true">
        
        <cfswitch expression ="#ARGUMENTS.rating#">
            <cfcase value="5">
                <cfset VARIABLES.ratingResult = "Rating : Very Good">
            </cfcase>   
            <cfcase value="4">
                <cfset VARIABLES.ratingResult = "Rating : Good">
            </cfcase>   
            <cfcase value="3">
                <cfset VARIABLES.ratingResult = "Rating : Fair">
            </cfcase>   
            <cfcase value="1,2">
                <cfset VARIABLES.ratingResult = "Rating : Ok">
            </cfcase>  
            <cfdefaultcase>
                <cfset VARIABLES.ratingResult = "Please enter a valid Number!..">
            </cfdefaultcase> 
        </cfswitch>
        
        <cfreturn VARIABLES.ratingResult>
    </cffunction>
</cfcomponent>
 