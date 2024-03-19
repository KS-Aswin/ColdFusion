<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html>
<head>
    <title>Image Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfset local.imgId = URL.imgId>
    <cfquery name="displayAll" datasource ="DESKTOP-89AF345">
        select * from imgData
        where imgId=<cfqueryparam value="#local.imgId#" cfsqltype="cf_sql_integer">
   </cfquery>
  
   <cfoutput query="displayAll">
        <h6>Name of the Image is :</h6>
        <h3>#imgName#</h3>
        <h6>Description of the Image is :</h6>
        <h4>#imgDesc#</h4>
        <h6>Image is :</h6>
        <img src="./assets/#imgFile#">
   </cfoutput> 
</body>
</html>
