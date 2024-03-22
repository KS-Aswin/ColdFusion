
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
        

        <cfset obj = createObject("component", "components.q28")>
        <cfset displayData=#obj.display()#>
        <div>
            <table>
                <tr>
                    <th>Id</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <cfloop query="displayData">
                    <tr>                
                        <th>#displayData.pid#</th>
                        <th>#displayData.pname#</th>
                        <th>#displayData.pdesc#</th>
                        <th><a href="q28_editData.cfm?idPage=#displayData.pid#">Edit</a></th>
                        <th><a href="components/q28.cfc?method=deleteData&idPage=#pid#">Delete</a></th>
                    </tr> 
                </cfloop>
            </table>
        </div>




        <button type="submit"><a href="q28_addData.cfm">Add New Data</a></button>



    </cfoutput>
</body>
</html>   

