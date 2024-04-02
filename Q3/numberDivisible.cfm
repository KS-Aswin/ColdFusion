
<!DOCTYPE html>
<html>
<head>
    <title>Number Division</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <h2>Please enter numbers separated by commas : </h2>
    <form method="post">
        <input type="text" name="numbers" required>
        <br>
        <input type="submit" name="submit" value="Submit">
    </form>

    <cfif structKeyExists(form, "numbers")>
        <cfset ProcessNumber = createObject("component", "components.divisibleByThree")>
        <cfset local.result = ProcessNumber.processNumbers(form.numbers)>
        <h2>Numbers Divisible by 3 : <cfoutput>#local.result#</cfoutput></h2>
    </cfif>
</body>
</html>
