<cfapplication name="myAppName" sessionmanagement="true">

<cfset cfcInstance = createObject("component", "components.q7")>
<!DOCTYPE html>
<html>
<head>
  <title>ColdFusion Structure Example</title>
  <link rel="stylesheet" type="text/css" href="./styles/style.css">
 
</head>
<body>

  <h2>Enter Key-Value Pairs</h2>
  <form method="post">
    <input type="text" name="key" placeholder="Enter Key" required><br>

    <input type="text" name="value" placeholder="Enter Value" required><br>

    <input type="submit" name="submit" value="Submit">
  </form>

  <cfif structKeyExists(form, "submit")>
    <cfset cfcInstance.processForm(form)>
    <cflocation url="#CGI.SCRIPT_NAME#" addtoken="false">
  </cfif>

  <h2>All Key-Value Pairs Entered:</h2>
  <cfdump var="#cfcInstance.getKeyValuePairs()#" label="Session Variable Dump" format="html">

</body>
</html>
