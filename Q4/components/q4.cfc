<cfcomponent>
    <cffunction name="dateAndTime" returntype="struct">
        <cfset var result = {}>
        
        <cfset todayDate = now()>
        <cfset result.todayDate = dateFormat(todayDate, "dd/MMM/yyyy") & " - " & dayOfWeekAsString(dayOfWeek(todayDate))>
        
        <cfset result.currentMonthNumeric = month(todayDate)>
        
        <cfset result.currentMonthWord = left(monthAsString(month(todayDate)), 3)>
        
        <cfset lastFridayDate = dateAdd("d", -((dayOfWeek(todayDate)+1) % 7), todayDate)>
        <cfset result.lastFridayDate = dateFormat(lastFridayDate, "dd/MMM/yyyy") & " - " & dayOfWeekAsString(dayOfWeek(lastFridayDate))>
        
        <cfset lastDayOfMonth = createDate(year(todayDate), month(todayDate) + 1, 1) - 1>
        <cfset result.lastDayOfMonth = dateFormat(lastDayOfMonth, "dd/MMM/yyyy") & " - " & dayOfWeekAsString(dayOfWeek(lastDayOfMonth))>
        
        <cfset result.lastFiveDays = []>
        <cfloop from="0" to="4" index="i">
            <cfset day = dateAdd("d", -i, todayDate)>
            <cfset dayString = dateFormat(day, "dd/MMM/yyyy") & " - " & dayOfWeekAsString(dayOfWeek(day))>
            <cfset color = "" >
            <cfif dayOfWeek(day) EQ 1>
                <cfset color = "red">
            <cfelseif dayOfWeek(day) EQ 2>
                <cfset color = "green">
            <cfelseif dayOfWeek(day) EQ 3>
                <cfset color = "orange">
            <cfelseif dayOfWeek(day) EQ 4>
                <cfset color = "yellow">
            <cfelseif dayOfWeek(day) EQ 5>
                <cfset color = "black">
            <cfelseif dayOfWeek(day) EQ 6>
                <cfset color = "blue">
            <cfelseif dayOfWeek(day) EQ 7>
                <cfset color = "cyan">
            </cfif>
            <cfset dayStruct = {date=dayString, dayOfWeek=dayOfWeekAsString(dayOfWeek(day)), color=color}>
            <cfset arrayAppend(result.lastFiveDays, dayStruct)>
        </cfloop>
        
        <cfreturn result>
    </cffunction>
</cfcomponent>