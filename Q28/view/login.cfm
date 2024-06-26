<cfset local.forSignin = createObject("component","controller.pages").checkLogin()>
<cfinclude template="./header.cfm">
    <cfoutput>
        <form class="loginForm " action="login.cfm" method="post" >
            <nav class="navbar navbarlogIn container-fluid m-0 align-items-center justify-content-between navbar-expand-lg flex-nowrap navbar-dark bg-primary py-0 px-3 px-sm-5 col-12">
                <a class="navbar-brand" href=""><h3><b>Info-Hub</b></h3></a>
                <a class="nav-link" title="Go to Home" href="./welcomePage.cfm">Home</a>
            </nav>
            <h2 class="py-3 px-5"><b>Log In</b></h2>
            <img class="card-img-top loginImg" src="../assets/images/login.png" alt="Card image cap">
            <h5 id="loginFailed"><b></b></h5>            
            <input class="loginInput mx-2 col-10 p-2" type="text" name="strUsername" id="strUsername" placeholder="Enter Username">
            <input class="loginInput mx-2 col-10 p-2" type="password" name="strPassword" id="strPassword" placeholder="Enter Password">
            <input class="loginSubmit" type="submit" name="submit" id="logInBtn"><br>
            <div class="d-flex col-12 flex-column justify-content-start align-items-center mb-4">
                <button class="loginCancel loginSubmit "><a title="Clear All" href="./login.cfm">Cancel</a></button>
                <p class="text-center text-muted mb-0">Don't have an account? <a href="../../signUpRevamp/index.cfm?action=signUp" class="fw-bold text-body"><u>Create Account</u></a></p>
            </div>
        </form>
    </cfoutput>
</body>
</html>