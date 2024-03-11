<!DOCTYPE html>
<html>
<head>
    <title>Rating System</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <h2>Please enter a number between 1 and 5:</h2>
    <form action="components/ratingProcessor.cfc?method=processRating" method="post">
        <input type="text" name="rating" required>
        <br>
        <input type="submit" value="Submit">
    </form>

    <cfif isDefined("variables.ratingResult")>
        <p>#variables.ratingResult#</p>
    </cfif>
</body>
</html>
