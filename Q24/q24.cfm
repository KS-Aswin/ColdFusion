<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/style.css">
    <script src="./scripts/jquery.min.js"></script>
    <script src="./scripts/q24.js"></script>
    <title>Document</title>
</head>
<body>
    <h2>Email validation using Ajax</h2>
    <div>
        <form method="post" id="emailForm">
            <input type="text" name="name" id="name" placeholder="Enter Name"><br><br>
            <input type="text" name="email" id="email" placeholder="Enter Email"><br>
            <input type="button" name="check" id="check" value="Check Email"><br><br><br>
            <p id="error"></p>
            <input type="submit" id="submit" name="submit" value="Submit" disabled>
        </form>
    </div>
   <div>
        <cfif structKeyExists(form, "submit") and len(trim(form.name)) GT 0>
            <cfinvoke component="components.q24" method="mailUpload">
                <cfinvokeargument name="name" value="#form.name#">
                <cfinvokeargument name="email" value="#form.email#">
            </cfinvoke>
        </cfif>
    </div>
</body>
</html>
