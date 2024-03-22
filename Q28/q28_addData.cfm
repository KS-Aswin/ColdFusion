
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfoutput>


        
        <h5><a href="q28_adminEditor.cfm">Go Back</a></h5>
        <h2>Add new Data</h2>

        <form action="q28_addData.cfm" method="post">
            <input type="text" placeholder="Enter Title" name="title" required>
            <input type="text" placeholder="Enter Description" name="desc" required> 
            <input type="submit" name="submit" value="Add">
        </form>

        <cfif structKeyExists(form, "submit") and len(trim(form.title)) GT 0>
            <cfset obj = createObject("component", "components.q28")>
            <h4>#obj.addData(form.title, form.desc)#</h4>
        </cfif>



    </cfoutput>
</body>
</html>   

