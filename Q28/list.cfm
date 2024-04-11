<!DOCTYPE html>
<html>
<head> 
    <title>Pages</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./assets/style2.css">
    <link rel="stylesheet" type="text/css" href="./assets/homePage.css">
    <link rel="stylesheet" type="text/css" href="./assets/list.css">
</head>
<body>
    <cfoutput>
        <div class="d-flex align-items-center justify-content-center col-12 mb-3">
            <nav class="navbar container-fluid navbar-expand-lg flex-nowrap navbar-dark bg-primary px-3 px-sm-5 col-12">
                <a class="navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                                <a class="nav-link" title="Go to Home" href="./homePage.cfm">Home</a>
                                <a class="nav-link" title="View the List" href="./list.cfm">View List</a>
                        </div>
                        <a class="nav-link" title="Go to Log In" href="controls/pages.cfc?method=logout">Log Out</a>
                    </ul>
                </div>
            </nav>
        </div>
        <cfif session.role eq "admin" || session.role eq "editor">
            <cfset session.login = true>
            <cfset local.obj = createObject("component", "controls.pages")>
            <cfset local.displayData=#local.obj.displayPage()#>
            <div class="list d-flex flex-column align-items-center justify-content-between col-12">
                <div class="col-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col"><h5><b>Title</b></h5></th>
                                <th scope="col"><h5><b>Description</b></h5></th>
                                <th scope="col"><h5><b>Action</b></h5></th>
                            </tr>
                        </thead>
                        <tbody>
                            <cfloop query="local.displayData">
                            <tr>
                                <th scope="col">#local.displayData.pname#</th>
                                <th scope="col">#local.displayData.pdesc#</th>
                                <th scope="col"><a href="editPage.cfm?idPage=#pid#"><span class="material-symbols-outlined pe-2">edit_note</span></a><a href="controls/pages.cfc?method=deletePage&idPage=#pid#"><span class="material-symbols-outlined">delete</span></a></th>
                            </tr>
                            </cfloop>
                        </tbody>
                    </table>
                    <div class="d-flex align-items-center justify-content-end ">
                        <button type="submit"><a href="editPage.cfm" title="Add file">Add New Data</a></button>
                    </div>
                </div>
                <ul class="nav justify-content-center border-bottom pt-5 mt-5 pb-3 mb-3 col-12">
                    <li class="nav-item"><a href="./homePage.cfm" title="Go to Home" class="nav-link px-2 text-body-secondary">Home</a></li>
                    <li class="nav-item"><a href="./list.cfm" title="View the List" class="nav-link px-2 text-body-secondary">View List</a></li>
                    <li class="nav-item"><a href="controls/pages.cfc?method=logout" title="Go to Log In" class="nav-link px-2 text-body-secondary">Log Out</a></li>
                </ul>
            </div>
        <cfelse>
            <cfset session.login = true>
            <cfset local.obj = createObject("component", "controls.pages")>
            <cfset local.displayData=#local.obj.displayPage()#>
            <div class="list d-flex flex-column align-items-center justify-content-between col-12">
                <div class="col-4">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col"><h5><b>Title</b></h5></th>
                            </tr>
                        </thead>
                        <tbody>
                            <cfloop query="local.displayData">
                                <tr>                
                                    <th><a title="View details" href="userDataPage.cfm?idPage=#pid#">#local.displayData.pname#</a></th>
                                </tr> 
                            </cfloop>
                        </tbody>
                    </table>
                </div>
                <ul class="nav justify-content-center border-bottom  pb-3 mb-3 col-12">
                    <li class="nav-item"><a href="./homePage.cfm" title="Go to Home" class="nav-link px-2 text-body-secondary">Home</a></li>
                    <li class="nav-item"><a href="./list.cfm" title="View the List" class="nav-link px-2 text-body-secondary">View List</a></li>
                    <li class="nav-item"><a href="controls/pages.cfc?method=logout" title="Go to Log In" class="nav-link px-2 text-body-secondary">Log Out</a></li>
                </ul>
            </div>
        </cfif>    
    </cfoutput>
</body>
</html>   

