<!DOCTYPE html>
<html>
<head> 
    <title>Pages</title>
    <link rel="stylesheet" type="text/css" href="./assets/style.css">
</head>
<body>
    <cfoutput>
        <cfset session.login="false">

        <cfif session.role eq "admin" || session.role eq "editor">
            <h5><a href="controls/pages.cfc?method=logout">Log Out</a></h5>
            <h2>Welcome</h2>

            <h2>Datas available for Admin or Editors</h2>
            

            <cfset local.obj = createObject("component", "controls.pages")>
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
                            <th><a href="editPage.cfm?idPage=#pid#">Edit</a></th>
                            <th><a href="controls/pages.cfc?method=deleteData&idPage=#pid#">Delete</a></th>
                        </tr> 
                    </cfloop>
                </table>
            </div>

            <button type="submit"><a href="editPage.cfm">Add New Data</a></button>
        <cfelse>
            <h5><a href="controls/pages.cfc?method=logout">Log Out</a></h5>
            <h2>Welcome user</h2>

            <h2>Datas available for User's</h2>
            

            <cfset local.obj = createObject("component", "controls.pages")>
            <cfset local.displayData=#local.obj.display()#>
            <div>
                <table >
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
        </cfif>
        
    </cfoutput>
</body>
</html>   

