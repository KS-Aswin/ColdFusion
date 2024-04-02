<cfset AgeBoth = createObject("component", "components.q5")>
<!DOCTYPE html>
<html>
<head>
    <title>Date of Birth</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <h2>User & Mother's Date of Birth</h2>
    <form method="post">
        <label for="userDOB">User's Date of Birth:</label>
        <input type="date" name="userDOB" required><br>
        
        <label for="motherDOB">Mother's Date of Birth:</label>
        <input type="date" name="motherDOB" required><br>
        
        <input type="submit" name="submit" value="Submit">
    </form>
    
    <cfif structKeyExists(form, "submit") and structKeyExists(form, "userDOB") and structKeyExists(form, "motherDOB")>

        <cfset local.result = AgeBoth.calculateAges(form.userDOB, form.motherDOB)>
        
        <h2>Results:</h2>
        <cfoutput><h2>User's Age : #local.result.userAge# years</h2></cfoutput>
        <cfoutput><h2>Mother's Age when User Born : #local.result.userBirthMotherAge# years</h2></cfoutput>
        <cfoutput><h2>Your Birthday will be in : #local.result.bDay# days</h2></cfoutput>
        <cfoutput><h2>Your Mother's Birthday will be in : #local.result.bDayM# days</h2></cfoutput>

    </cfif>
</body>
</html>