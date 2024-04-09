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
    <div class="d-flex align-items-center justify-content-center col-12 ">
        <nav class="navbar container-fluid navbar-expand-lg flex-nowrap navbar-dark bg-primary px-3 px-sm-5 col-12">
            <a class="navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
            <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                    <div class="d-flex  gap-3">
                            <a class="nav-link" href="">Home</a>
                            <a class="nav-link" href="">View List</a>
                    </div>
                    <a class="nav-link" href="">Log Out</a>
                </ul>
            </div>
        </nav>
    </div>
    <div class="card container-fluid align-items-center my-3 p-5">
        <h3>Admins can Add new Files</h3>
        <img class="card-img-top saveFile my-3" src="./assets/saveFile.png" alt="Card image cap">
        <div class="card-body">
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
    </div>
</cfoutput>
</body>
</html>