<cfcomponent>

    <!---SignUP function start--->
    <cffunction name="signup" access="public" returntype="string">
        <cfargument name="user" type="string" required="true">
        <cfargument name="pass" type="string" required="true">  

        <cfquery name="checkUser" >
            select role from userAdmin
            where uname=<cfqueryparam value="#arguments.user#" cfsqltype="cf_sql_varchar">
            and pass=<cfqueryparam value="#arguments.pass#" cfsqltype="cf_sql_varchar">
        </cfquery>     

        <cfif checkUser.role EQ "user">
            <cflocation url="userPage.cfm">
        </cfif> 
        <cfif checkUser.role EQ "editor" || checkUser.role EQ "admin">
            <cflocation url="adminPage.cfm">  
        <cfelse>
            <cfreturn "Login Failed!..Invalid Username or Password!">          
        </cfif>
    </cffunction>
    <!---SignUP function end--->

    <!---Add Data function start--->
    <cffunction  name="addData" access="public">
        <cfargument name="title" required="true">
        <cfargument name="desc" required="true">

        <cfquery name="checkData" >
            select * from pageTable
            where pname=<cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfquery name="insertData" >
            insert into pageTable (pname, pdesc)
            values (
                <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.desc#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>
        <cflocation  url="./adminPage.cfm">
    </cffunction>
    <!---Add Data function end--->


    <!---Display function start--->
    <cffunction  name="display" access="public">
        <cfquery name="displayData" >
            select * from pageTable
        </cfquery>
        <cfreturn displayData>
    </cffunction>
    <!---Display function end--->


    <!---Display User function start--->
    <cffunction  name="displayUser" access="public">
        <cfargument  name="pid" required="true">
        <cfquery name="displayUserData" >
            select * from pageTable
            where pid=<cfqueryparam value="#arguments.pid#" cfsqltype="cf_sql_varchar"> 
        </cfquery>
        <cfreturn displayUserData>
    </cffunction>
    <!---Display function end--->


    <!---Edit function start--->
    <cffunction  name="editData" access="public" >
        <cfargument  name="idPage" required="true">
        <cfargument name="newTitle" required="true">
        <cfargument name="newDesc" required="true">
        <cfquery name="insertNewData" >
            update pageTable
            set pname = <cfqueryparam value="#arguments.newTitle#" cfsqltype="cf_sql_varchar">,
                pdesc = <cfqueryparam value="#arguments.newDesc#" cfsqltype="cf_sql_varchar">
            where pid = <cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_varchar">    
        </cfquery>
        <cflocation  url="./adminPage.cfm">
    </cffunction>
    <!---Edit function end--->

    <cffunction  name="deleteData" access="remote">
        <cfargument  name="idPage" required="true">
        <cfquery name="deleteTheData" >
            delete from pageTable
            where pid=<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation  url="../adminPage.cfm">
    </cffunction>
    


</cfcomponent>
 