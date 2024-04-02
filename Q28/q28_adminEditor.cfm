
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfoutput>


        <h5><a href="q28.cfm">Log Out</a></h5>
        <h2>Welcome</h2>

        <h2>Datas available for Admin or Editors</h2>
        

        <cfset local.obj = createObject("component", "components.q28")>
        <cfset local.displayData=#local.obj.display()#>
        <div>
            <table>
                <tr>
                    <th>Id</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <cfloop query="local.displayData">
                    <tr>                
                        <th>#local.displayData.pid#</th>
                        <th>#local.displayData.pname#</th>
                        <th>#local.displayData.pdesc#</th>
                        <th><a href="q28_editData.cfm?idPage=#local.displayData.pid#">Edit</a></th>
                        <th><a href="components/q28.cfc?method=deleteData&idPage=#pid#">Delete</a></th>
                    </tr> 
                </cfloop>
            </table>
        </div>




        <button type="submit"><a href="q28_addData.cfm">Add New Data</a></button>



    </cfoutput>
</body>
</html>   

