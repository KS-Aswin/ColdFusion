<cfinclude template="./header.cfm">
<cfoutput>
    <cfinclude template="./navbar.cfm">
    <cfset local.intPageId=URL.pageId>
    <cfset local.obj = createObject("component", "CFC.pages")>
    <cfset local.displayUserData=#local.obj.getPagesDetails(local.intPageId)#>
    <div class="list d-flex flex-column align-items-center justify-content-between mt-5 col-12">
        <div class="col-8">
            <h3 class="p-4 text-center">Page Details</h3>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col"><h5><b>Title</b></h5></th>
                        <th scope="col"><h5><b>Description</b></h5></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="col">#local.displayUserData.pname#</th>
                        <th scope="col">#local.displayUserData.pdesc#</th>
                    </tr>
                </tbody>
            </table>
        </div> 
    </div>
<cfinclude template="./footer.cfm">  
</cfoutput>
