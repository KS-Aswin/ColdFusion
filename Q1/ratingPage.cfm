
<!DOCTYPE html>
<html>
<head>
    <title>Rating System</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <h2>Please enter a number between 1 and 5:</h2>
    <form method="post">
        <input type="text" name="rating" min="1" max="5" required>
        <br>
        <input type="submit" value="Submit">
    </form>

    <cfif structKeyExists(form, "rating")>
        <cfset RatingLogic = createObject("component", "components.ratingProcessor")>
        <cfset local.rating = RatingLogic.getRating(form.rating)>
        <h2>Your rating is : <cfoutput>#local.rating#</cfoutput></h2>
    </cfif>
</body>
</html>
