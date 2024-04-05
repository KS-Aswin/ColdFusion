
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./assets/style.css">
</head>
<body>
    <cfoutput>

        <cfset local.idPage=URL.idPage>

        <h5><a href="userPage.cfm">Go Back</a></h5>

        <h2>Datas available for User's</h2>
        

        <cfset local.obj = createObject("component", "controls.pages")>
        <cfset local.displayUserData=#local.obj.displayUser(local.idPage)#>
        <div>
            <table>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                </tr>
                <cfloop query="local.displayUserData">  
                    <tr>                

                        <th>#local.displayUserData.pname#</th>
                        <th>#local.displayUserData.pdesc#</th>
                    </tr> 
                </cfloop>
            </table>
        </div>

    </cfoutput>
</body>
</html>   

