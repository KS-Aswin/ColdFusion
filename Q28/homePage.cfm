<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./assets/homePage.css">
    <script src="./assets/jquery.min.js"></script>  
    <script src="./assets/common.js"></script>   
</head>
<body>
<cfoutput>
    <cfif session.role eq "admin" || session.role eq "editor">
        <cfset session.login = true>
        <div class="d-flex align-items-center justify-content-center col-12 ">
            <nav class="navbar container-fluid navbar-expand-lg flex-nowrap navbar-dark bg-primary px-3 px-sm-5 col-12">
                <a class="navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                                <a class="nav-link" title="Go to Home" href="">Home</a>
                                <a class="nav-link" title="View the List" href="./list.cfm">View List</a>
                        </div>
                        <a class="nav-link" title="Go to Log In" href="controls/pages.cfc?method=logout">Log Out</a>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="d-flex align-items-center justify-content-center px-5">
            <div class="card container-fluid col-4 align-items-center mt-5 mb-1 mx-1 p-2">
                <h3>Admins can add new Files</h3>
                <img class="card-img-top saveFile col-2 my-3" src="./assets/saveFile.png" alt="Card image cap">
                <div class="card-body px-2">
                    <p class="card-text ">Easily input new titles and descriptions to enrich your website's content. Keep your information up-to-date and captivating with minimal effort.</p>
                </div>
            </div>
            <div class="card container-fluid col-4 align-items-center mt-5 mx-1 mb-1 p-2">
                <h3>Admins can Edit Files</h3>
                <img class="card-img-top saveFile col-2 my-3" src="./assets/editFile.png" alt="Card image cap">
                <div class="card-body px-2">
                    <p class="card-text ">Swiftly adjust existing titles and descriptions to ensure accuracy and relevance. Maintain a polished and engaging user experience effortlessly.</p>
                </div>
            </div>
            <div class="card container-fluid col-4 align-items-center mt-5 mx-1 mb-1 p-2">
                <h3>Admins can delete Files</h3>
                <img class="card-img-top saveFile col-2 my-3" src="./assets/deleteFile.svg" alt="Card image cap">
                <div class="card-body px-2">
                    <p class="card-text ">Remove outdated or unnecessary text entries with ease, preserving the quality and integrity of your website's content.</p>
                </div>
            </div>
        </div>
        <ul class="nav justify-content-center border-bottom pt-5 mt-5 pb-3 mb-3">
            <li class="nav-item"><a href="./homePage.cfm" class="nav-link px-2 text-body-secondary">Home</a></li>
                    <li class="nav-item"><a href="./list.cfm" class="nav-link px-2 text-body-secondary">View List</a></li>
            <li class="nav-item"><a href="controls/pages.cfc?method=logout" class="nav-link px-2 text-body-secondary">Log Out</a></li>
        </ul>
    <cfelse>
        <cfset session.login = true>
        <div class="d-flex align-items-center justify-content-center col-12 ">
            <nav class="navbar container-fluid navbar-expand-lg flex-nowrap navbar-dark bg-primary px-3 px-sm-5 col-12">
                <a class="navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                                <a class="nav-link" title="Go to Home" href="">Home</a>
                                <a class="nav-link" title="View the List" href="./list.cfm">View List</a>
                        </div>
                        <a class="nav-link" title="Go to Log In" href="controls/pages.cfc?method=logout">Log Out</a>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="d-flex align-items-center justify-content-center px-5">
            <div class="card container-fluid col-10 align-items-center mt-5 mb-1 mx-1 p-2">
                <h3>As a User</h3>
                <img class="card-img-top saveFile saveFile2 my-3" src="./assets/viewFile.png" alt="Card image cap">
                <div class="card-body px-2">
                    <p class="card-text ">Welcome to <b>Info-Hub.</b> As a user, you have access to the latest content added by our administrators. You'll see the main titles on our homepage. Simply click on a title to view the full details and dive deeper into the content that interests you. Enjoy exploring and discovering new information on our platform!</p>
                </div>
            </div>
        </div>
        <ul class="nav justify-content-center border-bottom pt-5 mt-5 pb-3 mb-3">
            <li class="nav-item"><a href="./homePage.cfm" title="Go to Home" class="nav-link px-2 text-body-secondary">Home</a></li>
            <li class="nav-item"><a href="./list.cfm" title="View the List" class="nav-link px-2 text-body-secondary">View List</a></li>
            <li class="nav-item"><a href="controls/pages.cfc?method=logout" title="Go to Log In" class="nav-link px-2 text-body-secondary">Log Out</a></li>
        </ul>
    </cfif>
</cfoutput>
</body>
</html>