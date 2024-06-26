<cfinclude template="./header.cfm">
<cfoutput>
        <div class="d-flex align-items-center justify-content-center col-12 ">
            <nav class="navbar container-fluid navbar-expand-lg flex-nowrap navbar-dark bg-primary px-3 px-sm-5 col-12">
                <a class="navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                            <a class="nav-link" title="Go to Home" href="./welcomePage.cfm">Home</a>
                        </div>
                        <a class="nav-link" title="Log In Here" href="./login.cfm">Log In</a>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="d-flex align-items-center justify-content-center mt-4">
            <h3>As a Admin</h3>
        </div>
        <div class="d-flex align-items-center justify-content-center px-5">
            <div class="card container-fluid col-4 align-items-center mt-5 mb-1 mx-1 p-2">
                <h3>Admins can add new Files</h3>
                <img class="card-img-top saveFile col-2 my-3" src="../assets/images/saveFile.png" alt="Card image cap">
                <div class="card-body px-2">
                    <p class="card-text ">Easily input new titles and descriptions to enrich your website's content. Keep your information up-to-date and captivating with minimal effort.</p>
                </div>
            </div>
            <div class="card container-fluid col-4 align-items-center mt-5 mx-1 mb-1 p-2">
                <h3>Admins can Edit Files</h3>
                <img class="card-img-top saveFile col-2 my-3" src="../assets/images/editFile.png" alt="Card image cap">
                <div class="card-body px-2">
                    <p class="card-text ">Swiftly adjust existing titles and descriptions to ensure accuracy and relevance. Maintain a polished and engaging user experience effortlessly.</p>
                </div>
            </div>
            <div class="card container-fluid col-4 align-items-center mt-5 mx-1 mb-1 p-2">
                <h3>Admins can delete Files</h3>
                <img class="card-img-top saveFile col-2 my-3" src="../assets/images/deleteFile.svg" alt="Card image cap">
                <div class="card-body px-2">
                    <p class="card-text ">Remove outdated or unnecessary text entries with ease, preserving the quality and integrity of your website's content.</p>
                </div>
            </div>
        </div>
        <div class="d-flex align-items-center justify-content-center px-5">
            <div class="card container-fluid col-10 align-items-center mt-5 mb-1 mx-1 p-2">
                <h3>As a User</h3>
                <img class="card-img-top saveFile saveFile2 my-3" src="../assets/images/viewFile.png" alt="Card image cap">
                <div class="card-body px-2">
                    <p class="card-text ">Welcome to <b>Info-Hub.</b> As a user, you have access to the latest content added by our administrators. You'll see the main titles on our homepage. Simply click on a title to view the full details and dive deeper into the content that interests you. Enjoy exploring and discovering new information on our platform!</p>
                </div>
            </div>
        </div>
        <ul class="nav justify-content-center border-bottom col-12 pt-5 mt-5 pb-3 ">
            <li class="nav-item"><a href="./welcomePage.cfm" title="Go to Welcome Page" class="nav-link px-2 text-body-secondary">Home</a></li>
            <li class="nav-item"><a href="./login.cfm" title="Log In Here" class="nav-link px-2 text-body-secondary">Log In</a></li>
        </ul>
</cfoutput>
</body>
</html>