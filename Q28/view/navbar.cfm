<cfoutput>
    <div class="d-flex align-items-center justify-content-center col-12">
        <nav class="navbar container-fluid navbar-expand-lg flex-nowrap navbar-dark bg-primary px-3 px-sm-5 col-12">
            <a class="navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
            <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                <div class="d-flex  gap-3">
                    <a class="nav-link" title="Go to Home" href="./homePage.cfm">Home</a>
                    <a class="nav-link" title="View the List" href="./list.cfm">View List</a>
                </div>
                <div class="d-flex  gap-2">
                    <a class="nav-link welcomeUser me-2" href="">Hello #session.strfullName#</a>           
                    <a class="nav-link" title="Go to Log In" href="../controllers/pages.cfc?method=doLogOut">Log Out</a>
                </div>
            </div>
        </nav>
    </div>
</cfoutput>