<!DOCTYPE html>
<html>
<head>
    <title>Date</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <h2>Calendar Program</h2><br><br>
    <cfset DateTime = createObject("component", "components.q4")>
    <cfset local.data = DateTime.dateAndTime()>
    
    <h2><cfoutput>Today's Date: #local.data.todayDate#</cfoutput></h2>
    <h2><cfoutput>Current Month (Numeric): #local.data.currentMonthNumeric#</cfoutput></h2>
    <h2><cfoutput>Current Month (Word): #local.data.currentMonthWord#</cfoutput></h2>
    <h2><cfoutput>Last Friday's Date: #local.data.lastFridayDate#</cfoutput></h2>
    <h2><cfoutput>Last Day of the Month: #local.data.lastDayOfMonth#</cfoutput></h2>
    
    <h2>Last 5 Days:</h2>
    <cfoutput>
        <cfloop array="#local.data.lastFiveDays#" index="day">
            <h2 style="color: #day.color#;">#day.date#</h2>
        </cfloop>
    </cfoutput>
</body>
</html>