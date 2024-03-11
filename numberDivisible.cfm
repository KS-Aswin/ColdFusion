<!DOCTYPE html>
<html>
<head>
    <title>Number Division</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <h2>Please enter numbers separated by commas:</h2>
    <form action="components/divisibleByThree.cfc?method=processNumbers" method="post">
        <input type="text" name="numbers" required>
        <br>
        <input type="submit" value="Submit">
    </form>

    <cfif isDefined("variables.divisibleNumbers")>
        <h1>Numbers Divisible by 3: #variables.divisibleNumbers#</h1>
    </cfif>
</body>
</html>
