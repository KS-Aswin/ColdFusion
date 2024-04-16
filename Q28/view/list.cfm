<cfinclude template="./header.cfm">
<cfoutput>
<cfinclude template="./navbar.cfm">
<cfif session.role eq "admin" || session.role eq "editor">
    <cfset session.login = true>
    <cfset local.obj = createObject("component", "CFC.pages")>
    <cfset local.displayData=#local.obj.displayPage()#>
    <div class="list d-flex flex-column align-items-center justify-content-between mt-5 col-12">
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
                        <th scope="col"><a href="./editPage.cfm?idPage=#pid#"><span class="material-symbols-outlined pe-3">edit_note</span></a>
                        
                        <button class="deleteLink " value="#local.displayData.pid#" type="submit"><span class="material-symbols-outlined">delete</span></button>
                        <!---a class="deleteLink" href="" data-id="#local.displayData.pid#"><span class="material-symbols-outlined">delete</span></a---></th>
                    </tr>
                    </cfloop>
                </tbody>
            </table>
            <div class="d-flex align-items-center justify-content-end ">
                <button class="addButton" type="submit"><a href="./editPage.cfm" title="Add file">Add New Data</a></button>
            </div>
        </div>
    </div>
<cfelse>
    <cfset session.login = true>
    <cfset local.obj = createObject("component", "CFC./pages")>
    <cfset local.displayData=#local.obj.displayPage()#>
    <div class="list d-flex flex-column align-items-center justify-content-between mt-5 col-12">
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
                            <th><a title="View details" href="./userDataPage.cfm?idPage=#pid#">#local.displayData.pname#</a></th>
                        </tr> 
                    </cfloop>
                </tbody>
            </table>
        </div>
    </div>
</cfif> 
<cfinclude template="./footer.cfm">  
</cfoutput>
