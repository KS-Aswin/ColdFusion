
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./assets/style.css">
</head>
<body>
    <cfoutput>


        <h5><a href="login.cfm">Log Out</a></h5>
        <h2>Welcome user</h2>

        <h2>Datas available for User's</h2>
        

        <cfset local.obj = createObject("component", "controls.pages")>
        <cfset local.displayData=#local.obj.display()#>
        <div>
            <table>
                <tr>
                    <th>Id</th>
                    <th>Title</th>
                </tr>
                <cfloop query="local.displayData">
                    <tr>                
                        <th>#local.displayData.pid# </th>
                        <th><a href="userDataPage.cfm?idPage=#pid#">#local.displayData.pname#</a></th>
                    </tr> 
                </cfloop>
            </table>
        </div>

    </cfoutput>
</body>
</html>   

