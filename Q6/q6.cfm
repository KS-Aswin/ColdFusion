<cfset cfcInstance = createObject("component", "components.q6")>

<!--- q6.cfm --->
<!DOCTYPE html>
<html>
<head>
    <title>ColdFusion Structure Example</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">

</head>
<body>
    <h2>Enter Key-Value Pairs</h2>
    <form method="post">
        <label for="key">Key:</label>
        <input type="text" name="key" required><br>
        
        <label for="value">Value:</label>
        <input type="text" name="value" required><br>
        
        <input type="submit" name="submit" value="Submit">
    </form>
    
    
        <cfset formData = form>
        <cfset keyValuePairs = cfcInstance.processForm(formData)>

        <cfif isStruct(keyValuePairs)>
            <h2>Structure:</h2>
            <cfdump var="#keyValuePairs#">
        </cfif>
    
</body>
</html>