<cfcomponent>
    <cffunction name="signin" access="public" returnType="void">
        <cfif session.login>
            <cflocation url="../view/homePage.cfm">
        </cfif>
    </cffunction>

    <cffunction name="logout" access="remote" returnType="void">
        <cfset StructClear(Session)>
        <cfset session.login=false>
        <cflocation  url="../view/login.cfm">
    </cffunction>

    <cffunction name="doSignin" access="remote"  returnformat="json">
        <cfargument name="user" required="true">
        <cfargument name="pass" required="true">
        <cfquery name="checkLogin" result="loginCheck">
            select uid,uname,pass from userAdmin
            where uname=<cfqueryparam value="#arguments.user#" cfsqltype="cf_sql_varchar">
            AND pass=<cfqueryparam value="#arguments.pass#" cfsqltype="cf_sql_varchar"> 
        </cfquery>
        <cfset local.id = checkLogin.uid>
        <cfif checkLogin.recordCount>
            <cfquery name="checkRole">
                select role from userAdmin
                where uid=<cfqueryparam value="#local.id#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cfset session.role=checkRole.role>
            <cfif session.role EQ "admin" || session.role EQ "editor" || session.role EQ "user">
                <cfreturn {"message":"exists"}>
            </cfif>
        <cfelse>
            <cfreturn {"message":"invalid"}>
        </cfif>
    </cffunction>

    <cffunction name="displayPage" access="public" returnType="query">
        <cfquery name="displayData" >
            select *  from pageTable
        </cfquery>
        <cfreturn displayData>
    </cffunction>

    <cffunction name="displayUser" access="public" returnType="query">
        <cfargument  name="pid" required="true">
        <cfquery name="displayUserData" >
            select * from pageTable
            where pid=<cfqueryparam value="#arguments.pid#" cfsqltype="cf_sql_varchar"> 
        </cfquery> 
        <cfreturn displayUserData>
    </cffunction>

    <cffunction  name="savePage" access="remote"  returnformat="json">
        <cfargument name="idPage" required="true">
        <cfargument name="title" required="true">
        <cfargument name="desc" required="true">
        <cfif arguments.idPage GT 0>
            <cfquery name="insertNewData" >
                update pageTable
                set pname = <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
                    pdesc = <cfqueryparam value="#arguments.desc#" cfsqltype="cf_sql_varchar">
                where pid = <cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_integer">    
            </cfquery>
            <cfreturn {"success":true, "message":"Edited Successfully!"}>
        <cfelseif arguments.idPage EQ 0>
            <cfquery name="insertData" >
                insert into pageTable (pname, pdesc)
                values (
                    <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.desc#" cfsqltype="cf_sql_varchar">
                )
            </cfquery> 
            <cfreturn {"success":true, "message":"Added Successfully!"}>
        </cfif>
    </cffunction>
   
    <cffunction  name="valueDisplay" access="public" returnType="query"> 
        <cfargument  name="idPage" required="true">   
        <cfquery name="displayValue" >
            select pname,pdesc from pageTable
            where pid=<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_varchar"> 
        </cfquery> 
        <cfreturn displayValue>
    </cffunction> 

    <cffunction  name="deletePage" access="remote"  returnformat="json" >
        <cfargument  name="idPage" required="true">
        <cfquery name="deleteTheData" >
            delete from pageTable
            where pid=<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn {"message":"delete"}>
    </cffunction> 

    <cffunction  name="pageCounts" access="remote"  returnformat="json">
        <cfargument name="idPage" required="true">
        <cfargument name="title" required="true">
        <cfquery name="tableName">
            select pname
            from pageTable
            where pname = <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">
            and pid != <cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_integer">
        </cfquery>
            <cfif tableName.recordCount>
                <cfreturn {"success":false, "message":"The title is already existing!"}>
            <cfelse>
                <cfreturn {"success":true, "message":""}>
            </cfif>
    </cffunction>
 
</cfcomponent>
 