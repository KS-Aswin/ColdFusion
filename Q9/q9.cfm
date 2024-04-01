<cfapplication name="myAppName" sessionmanagement="true">

<!DOCTYPE html>
<html>
<head>
  <title>ColdFusion Structure Example</title>
  <link rel="stylesheet" type="text/css" href="./styles/style.css">
 
</head>
<body>

  <h2>Enter Key-Value Pairs</h2>
    <form method="post">
        <input type="text" name="key" placeholder="Enter Key"required><br>
        <input type="text" name="value" placeholder="Enter Value"required><br>        
        <input type="submit" name="submit" value="Submit">
    </form>
    
    <cfif StructKeyExists(form,"key")>
        <cfinvoke component = "components/q9" method ="processForm">
            <cfinvokeargument name="key" value="#form.key#">
            <cfinvokeargument name="value" value="#form.value#">
        </cfinvoke>
    </cfif>  
    
    <cfdump var ="#session.newStruct#">

</body>
</html>
