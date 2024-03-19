<cfapplication name="MyApplication" sessionmanagement="yes">
<!DOCTYPE html>
<html>
<head>
    <title>Img Details</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>
    <cfset local.imgId = URL.imgId>
    <cfquery name="displayImg" datasource ="DESKTOP-89AF345">
        select imgName,imgFile from imgData
        where imgId=<cfqueryparam value='#local.imgId#' cfsqltype="cf_sql_varchar">
    </cfquery>
    <cfoutput query="displayImg">
        <a href="q14_third.cfm?imgId=#imgId#">#imgName#</a>
        <img width="20" height="20" alt="Images" src="./assets/#imgFile#">
    </cfoutput>
</body>
</html>


