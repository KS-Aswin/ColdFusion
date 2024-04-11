<cfset variables.idPage = 0>
<cfset variables.pname = "">
<cfset variables.pdesc = "">
<cfset variables.success = "">
<cfset variables.errorMsg = "">
<cfset variables.successMsg = "">

<cfif structKeyExists(url,"idPage")>        
    <cfset variables.idPage = "#url.idPage#">
    <cfset local.objectValueDisplay = createObject("component","controls/pages")>
    <cfset variables.displayData=#local.objectValueDisplay.valueDisplay(url.idPage)# >
    <cfset variables.pname = "#variables.displayData.pname#">
    <cfset variables.pdesc = "#variables.displayData.pdesc#">
</cfif>

<cfif structKeyExists(variables,"idPage") AND variables.idPage GT 0>
    <cfset variables.headings = "Save Page">
    <cfset variables.btnValue = "Save">
<cfelse>    
    <cfset variables.headings = "Add Page">
    <cfset variables.btnValue = "Add">
</cfif>

<cfif structKeyExists(form, "submit")>
    <cfif structKeyExists(form,"pageId") and isNumeric(form.pageId)>
        <cfif structKeyExists(form,"title") or structKeyExists(form,"desc")>
            <cfif len(trim(form.title))eq 0>
                <cfset variables.errorMsg &="Title is required"&"<br>"> 
            <cfelseif REFind("[^A-Za-z]+$", form.title)>
                <cfset variables.errorMsg &= "Title must contain String values only" & "<br>">                        
            </cfif>
            <cfif len(trim(form.desc))eq 0>
                <cfset variables.errorMsg &="Description is required"&"<br>">
            </cfif>
            <cfif isNumeric(form.title)>
                <cfset variables.errorMsg &="Title must be a String"&"<br>">
            </cfif>
            <cfif isNumeric(form.desc)>
                <cfset variables.errorMsg &="Description must contain String"&"<br>">
            </cfif>
        </cfif>
        <cfif len(trim(variables.errorMsg)) EQ 0>        
            <cfset variables.objectEditData = createObject("component", "controls/pages")>
            <cfset variables.success = #variables.objectEditData.savePage(form.pageId,form.title,form.desc)#>
        </cfif>
    </cfif>
</cfif>

<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <title>Pages</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./assets/homePage.css">
    <link rel="stylesheet" type="text/css" href="./assets/editPage.css">
    <script src="./assets/jquery.min.js"></script>  
    <script src="./assets/common.js"></script>   
</head>
<body>
    <div class="d-flex align-items-center justify-content-center col-12 ">
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
    <div class=" col-8">
        <div class="list d-flex flex-column align-items-center justify-content-between col-12">
            <div class="col-8">    
                <h5 class="errorMsg">#variables.errorMsg#</h5>
                <h2 class="successMsg mb-3">#variables.success#</h2>
                <h2 class="mb-4"><b>#variables.headings#</b></h2>
                <form action="" id="target" method="post">   
                    <div class="d-flex align-items-center">
                        <label class="w-100 text-start" for="title">Page Title<span class="imp">*</span></label>
                        <input class="col-8" type="text" name="title" id="title" value="#pname#">
                    </div>
                    <div class="d-flex align-items-center">
                        <label class="w-100 text-start" for="desc">Page Description<span class="imp">*</span></label>
                        <textarea class="col-8 " name="desc" id="desc" >#pdesc#</textarea>
                    </div>
                    <input type="hidden" name="pageId" id="pageId" value="#variables.idPage#">
                    <div class="d-flex align-items-center justify-content-end my-2">
                        <input class="cancel ok text-center col-1 p-2" type="submit" value="#btnValue#" name="submit" id="submitBtn">
                        <button class="cancel back text-center col-1 ms-2 p-2"><a href="list.cfm">Cancel</a></button>
                    </div>
                </form>
            </div>
        </div>
            <ul class="nav justify-content-center border-bottom pb-3 mb-3 col-12">
                <li class="nav-item"><a href="./homePage.cfm" title="Go to Home" class="nav-link px-2 text-body-secondary">Home</a></li>
                <li class="nav-item"><a href="./list.cfm" title="View the List" class="nav-link px-2 text-body-secondary">View List</a></li>
                <li class="nav-item"><a href="controls/pages.cfc?method=logout" title="Go to Log In" class="nav-link px-2 text-body-secondary">Log Out</a></li>
            </ul>
    </div>
</body>
</html>   
</cfoutput>
