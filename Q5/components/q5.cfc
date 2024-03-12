<cfcomponent>
    <cffunction name="calculateAges" returntype="struct">
        <cfargument name="userDOB" type="date" required="true">
        <cfargument name="motherDOB" type="date" required="true">
        
        <cfset var result = {}>
        
        <!--- Calculate user's age --->
        <cfset result.userAge = dateDiff("yyyy", arguments.userDOB, now())>
        
        <!--- Calculate mother's age --->
        <cfset result.motherAge = dateDiff("yyyy", arguments.motherDOB, now())>
        
        <cfset result.userBirthMotherAge = result.motherAge - result.userAge>

        <cfset userBirthday = createDate(year(now()), month(arguments.userDOB), day(arguments.userDOB))>
        <cfif userBirthday lt now()>
            <cfset userBirthday = dateAdd("yyyy", 1, userBirthday)>
        </cfif>
        <cfset result.bDay = dateDiff("d", now(), userBirthday)>

        <cfset motherBirthday = createDate(year(now()), month(arguments.motherDOB), day(arguments.motherDOB))>
        <cfif motherBirthday lt now()>
            <cfset motherBirthday = dateAdd("yyyy", 1, motherBirthday)>
        </cfif>
        <cfset result.bDayM = dateDiff("d", now(), motherBirthday)>

        <cfreturn result>
    </cffunction>
</cfcomponent>
