
<cfapplication name="MyApplication" sessionmanagement="true">

<!DOCTYPE html>
<html>
<head>
    <title>ColdFusion Structure Example</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>

    <cfoutput>

        <table>
            <thead>
                <tr>
                    <td><b>Name</b></td>
                    <td><b>Age</b></td>
                    <td><b>Location</b></td>
                </tr>
            </thead>
            <tbody>  
                <cfset local.obj = createObject("component","components.q22")>
                    #local.obj.jsonFile()#
            </tbody>
        </table>
        
    </cfoutput>

</body>
</html>
