<cfcomponent>
    <cffunction name="insertImage" access="public">
        <cfargument name="imgName"  required="true">
        <cfargument name="imgDesc" required="true">
        <cfargument name="imgFile" required="true">

        <cfset local.path = ExpandPath("./assets/")>
        <cffile action="upload" destination="#local.path#" nameConflict="MakeUnique">
        <cfset local.image = cffile.clientFile>
        

        <cfquery name="imgData" result="imageResult">
            insert into imgData(imgName,imgDesc,imgFile)
            values(
                <cfqueryparam value="#arguments.imgName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.imgDesc#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#local.image#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>

        <cfset local.id = imageResult.generatedKey>
    
        <cflocation url="q14_second.cfm?imgId=#local.id#">
    </cffunction>

    <cffunction name="displaySecond" access="remote" >
        <cfargument name="imgId" required="true">
        <cfquery name="display">
            select * from imgData
            where imgId=<cfqueryparam value='#arguments.imgId#' cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn display>
    </cffunction>

    <cffunction name="displayImage" access="remote">
        <cfargument name="imgId" required="true">
        <cfquery name="display">
            select * from imgData
            where imgId=<cfqueryparam value='#arguments.imgId#' cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn display>
    </cffunction>
</cfcomponent>