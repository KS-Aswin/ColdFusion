
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfoutput>


        <h5><a href="q28.cfm">Log Out</a></h5>
        <h2>Welcome user</h2>

        <h2>Datas available for User's</h2>
        

        <cfset obj = createObject("component", "components.q28")>
        <cfset displayData=#obj.display()#>
        <div>
            <table>
                <tr>
                    <th>Id</th>
                    <th>Title</th>
                </tr>
                <cfloop query="displayData">
                    <tr>                
                        <th>#displayData.pid# </th>
                        <th><a href="q28_userView.cfm?idPage=#pid#">#displayData.pname#</a></th>
                    </tr> 
                </cfloop>
            </table>
        </div>

        

        <button type="submit"><a href="q28_userView.cfm">Add New Data</a></button>

    </cfoutput>
</body>
</html>   

