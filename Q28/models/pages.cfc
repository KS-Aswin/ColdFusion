<cfcomponent>

    <cffunction name="doSignin" access="remote"  returnformat="json">
        <cfargument name="user" required="true">
        <cfargument name="pass" required="true">
        <cfset variables.hashPassword=Hash(arguments.pass,"MD5")>
        <cfquery name="checkLogin" result="loginCheck">
            select uid,uname,pass,role from userAdmin
            where uname=<cfqueryparam value="#arguments.user#" cfsqltype="cf_sql_varchar">
            AND pass=<cfqueryparam value="#variables.hashPassword#" cfsqltype="cf_sql_varchar"> 
        </cfquery>
        <cfif checkLogin.recordCount>
            <cfset session.role=checkLogin.role>
            <cfif session.role EQ "admin" || session.role EQ "editor" || session.role EQ "user">
                <cfset session.login = true>
                <cfreturn {"message":"exists"}>
            </cfif>
        <cfelse>
            <cfreturn {"message":"invalid"}>
        </cfif>
    </cffunction>

    <cffunction name="getPagesDetails" access="remote" returntype="query">
        <cfargument name="intPageId">
        <cfquery name="forDisplay">
            select pid,pname,pdesc 
            from pageTable
            <cfif structKeyExists(arguments,"intPageId")>
                where pid =<cfqueryparam value="#arguments.intPageId#" cfsqltype="cf_sql_integer">
            </cfif>
        </cfquery>
        <cfreturn forDisplay>
    </cffunction>

    <cffunction  name="savePage" access="remote"  returnformat="json">
        <cfargument name="intPageId" required="true">
        <cfargument name="strTitle" required="true">
        <cfargument name="strDescription" required="true">
        <cftry>
            <cfif arguments.intPageId GT 0>
                <cfquery name="insertNewData" >
                    update pageTable
                    set pname = <cfqueryparam value="#arguments.strTitle#" cfsqltype="cf_sql_varchar">,
                        pdesc = <cfqueryparam value="#arguments.strDescription#" cfsqltype="cf_sql_varchar">
                    where pid = <cfqueryparam value="#arguments.intPageId#" cfsqltype="cf_sql_integer">    
                </cfquery>
                <cfreturn {"success":true, "message":"Edited Successfully!"}>
            <cfelseif arguments.intPageId EQ 0>
                <cfquery name="insertData" >
                    insert into pageTable (pname, pdesc)
                    values (
                        <cfqueryparam value="#arguments.strTitle#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#arguments.strDescription#" cfsqltype="cf_sql_varchar">
                    )
                </cfquery> 
                <cfreturn {"success":true, "message":"Added Successfully!"}>
            </cfif>
        <cfcatch type="exception">
            <cfreturn {"error":"An unexpected error occured!"}>
        </cfcatch>
        </cftry>
            
    </cffunction>

    <cffunction  name="deletePage" access="remote"  returnformat="json" >
        <cfargument  name="intPageId" required="true">
        <cfquery name="deleteTheData" >
            delete from pageTable
            where pid=<cfqueryparam value="#arguments.intPageId#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn {"message":"delete"}>
    </cffunction> 

    <cffunction  name="checkPageExists" access="remote"  returnformat="json">
        <cfargument name="intPageId" required="true">
        <cfargument name="strTitle" required="true">
        <cfquery name="tableName">
            select pname
            from pageTable
            where pname = <cfqueryparam value="#arguments.strTitle#" cfsqltype="cf_sql_varchar">
            and pid != <cfqueryparam value="#arguments.intPageId#" cfsqltype="cf_sql_integer">
        </cfquery>
            <cfif tableName.recordCount>
                <cfreturn {"success":false, "message":"The title is already existing!"}>
            <cfelse>
                <cfreturn {"success":true, "message":""}>
            </cfif>
    </cffunction>
 
</cfcomponent>
 