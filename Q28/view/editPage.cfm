<cfinclude template="../controllers/editAction.cfm">
<cfoutput>
<cfinclude template="./header.cfm"> 
    <cfinclude template="./navbar.cfm">
    <div class=" col-8">
        <div class="editPage d-flex flex-column align-items-center justify-content-between col-12">
            <div class="col-8">  
                <h2 class="editHeading mb-4 mt-5"><b>#variables.headings#</b></h2>  
                <h5 class="errorMsg"><b>#variables.errorMsg#</b></h5>
                <h5 class="successMsg mb-3"><b>#variables.success#</b></h5>
                <form action="" id="target" method="post">   
                    <div class="d-flex align-items-center mb-2">
                        <label class="w-100 text-start" for="title">Page Title<span class="imp">*</span></label>
                        <input class="col-8 p-2" type="text" name="title" id="title" value="#pname#">
                    </div>
                    <div class="d-flex align-items-center">
                        <label class="w-100 text-start" for="desc">Page Description<span class="imp">*</span></label>
                        <textarea class="col-8 p-2" name="desc" id="desc" >#pdesc#</textarea>
                    </div>
                    <input type="hidden" name="pageId" id="pageId" value="#variables.idPage#">
                    <div class="d-flex align-items-center justify-content-end my-2">
                        <input class="cancel ok text-center col-1 p-2" type="submit" value="#btnValue#" name="submit" id="submitBtn">
                        <button class="cancel back editButton text-center col-1 ms-2 p-2"><a href="./list.cfm">Cancel</a></button>
                    </div>
                </form>
            </div>
        </div>
    <cfinclude template="./footer.cfm">   
</cfoutput>
