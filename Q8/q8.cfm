<cfapplication name="myAppName" sessionmanagement="true">

<cfset cfcInstance = createObject("component", "components.q8")>
<cfset cfcInstance.init()> <!-- Initialize the component -->

<!DOCTYPE html>
<html>
<head>
    <title>ColdFusion Structure Example</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
    <style>
        .key-value-pair {
            margin-bottom: 10px;
        }
    </style>
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
    
    <!-- Process form submission -->
    <cfif structKeyExists(form, "submit")>
        <cfset cfcInstance.processForm(form)>
        <!-- Redirect to avoid resubmission on refresh -->
        <cflocation url="#CGI.SCRIPT_NAME#" addtoken="false">
    </cfif>
    
    <!-- Display session variable dump for debugging -->
    <cfdump var="#cfcInstance.getKeyValuePairs()#" label="Session Variable Dump">
    
    <!-- Display all key-value pairs -->
    
</body>
</html>
