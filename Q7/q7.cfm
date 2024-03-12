<cfset cfcInstance = createObject("component", "components.q7")>
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
    </cfif>
    
    <!-- Display all key-value pairs -->
    <cfset keyValuePairs = cfcInstance.getKeyValuePairs()>
    <cfif isStruct(keyValuePairs) and structCount(keyValuePairs) GT 0>
        <h2>All Key-Value Pairs Entered:</h2>
        <cfloop item="key" collection="#keyValuePairs#">
            <div class="key-value-pair">
                <strong>#key#:</strong> #keyValuePairs[key]#
            </div>
        </cfloop>
    </cfif>
</body>
</html>
