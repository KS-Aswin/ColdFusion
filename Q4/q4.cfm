<cfset DateTime = createObject("component", "components.q4")>
<!DOCTYPE html>
<html>
<head>
    <title>Date</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <h2>Calendar Program</h2><br><br>
    
    <cfset data = DateTime.dateAndTime()>
    
    <h2><cfoutput>Today's Date: #data.todayDate#</cfoutput></h2>
    <h2><cfoutput>Current Month (Numeric): #data.currentMonthNumeric#</cfoutput></h2>
    <h2><cfoutput>Current Month (Word): #data.currentMonthWord#</cfoutput></h2>
    <h2><cfoutput>Last Friday's Date: #data.lastFridayDate#</cfoutput></h2>
    <h2><cfoutput>Last Day of the Month: #data.lastDayOfMonth#</cfoutput></h2>
    
    <!-- Display last 5 days including today -->
    <h2>Last 5 Days:</h2>
    <cfoutput>
        <cfloop array="#data.lastFiveDays#" index="day">
            <h2 style="color: #day.color#;">#day.date#</h2>
        </cfloop>
    </cfoutput>
</body>
</html>