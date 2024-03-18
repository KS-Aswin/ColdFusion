<cfcomponent>
    <cffunction name="insertImage" access="public" returnType="void">
        <cfargument name="imgName" required="true" type="string">
        <cfargument name="imgDesc" required="true" type="string">
        <cfargument name="imgFile" required="true" type="string">

        <cfset local.path = ExpandPath("./assets/")>
        <cffile action="upload" destination="#local.path#" nameConflict="MakeUnique">
        <cfset local.image = cffile.clientFile>

        <cfquery datasource="DESKTOP-89AF345" name="imgList">
            INSERT INTO imgData (imgName, imgDesc, imgFile)
            VALUES (
                <cfqueryparam value="#arguments.imgName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.imgDesc#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#local.image#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>
        
        <cfquery datasource="DESKTOP-89AF345" name="pagelist">
            SELECT imgId FROM imgData
            WHERE imgName = <cfqueryparam value="#local.image#" cfsqltype="cf_sql_varchar">
        </cfquery>

        <cflocation url="q14_second.cfm?imgId=#pagelist.imgId#" addtoken="no">
    </cffunction>
</cfcomponent>
