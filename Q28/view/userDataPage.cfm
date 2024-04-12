<!---header--->
<cfinclude template="./header.cfm">
</head>
<body>
    <cfoutput>
        <!---navbar--->
        <cfinclude template="./navbar.cfm">
        <cfset local.idPage=URL.idPage>
        <cfset local.obj = createObject("component", "models.pages")>
        <cfset local.displayUserData=#local.obj.displayUser(local.idPage)#>
        <div class="list d-flex flex-column align-items-center justify-content-between mt-5 col-12">
            <div class="col-8">
                <h3 class="p-4 text-center">The Database Values</h3>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col"><h5><b>Title</b></h5></th>
                            <th scope="col"><h5><b>Description</b></h5></th>
                        </tr>
                    </thead>
                    <tbody>
                        <cfloop query="local.displayUserData">
                        <tr>
                            <th scope="col">#local.displayUserData.pname#</th>
                            <th scope="col">#local.displayUserData.pdesc#</th>
                        </tr>
                        </cfloop>
                    </tbody>
                </table>
            </div> 
        </div>
        <!---footer--->
    <cfinclude template="./footer.cfm">  
</cfoutput>
