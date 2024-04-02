<!DOCTYPE html>
<html>
<head>
    <title>People</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <h2>Please enter a number between 1 and 10:</h2>
    <form action="" method="post">
        <input type="text" name="num" min="1" max="10" required>
        <br>
        <input type="submit" value="Submit">
    </form>
    
    <cfif structKeyExists(form, "num")>
        <cfif isNumeric(form.num) AND form.num GTE 1 AND form.num LTE 10>
            <cfset local.namesObj = createObject("component", "components.q12")>
            <cfset local.allData = local.namesObj.getAllNames()>
        
            <h2>All Data</h2>
            <h4><cfoutput query="local.allData">
                #FirstName# #LastName#<br>
            </cfoutput></h4>   
            <h5>First Name of nth Row</h2>
            <cfoutput><h4>#local.namesObj.getFirstName(form.num)#</h4></cfoutput>     
        <cfelse>
            <h5>Please enter a number between 1 and 10!..</h5>
        </cfif>
        
    </cfif>
</body>
</html>