<cfcomponent>
    <cffunction name="signin" access="public">
        <cfif session.login>
            <cflocation url="./homePage.cfm">
        </cfif>
    </cffunction>

    <cffunction name="logout" access="remote" >
        <cfset StructClear(Session)>
        <cfset session.login=false>
        <cflocation  url="./login.cfm">
    </cffunction>
    
    <cffunction name="doSignin" access="public" returntype="string">
        <cfargument name="user" type="string" required="true">
        <cfargument name="pass" type="string" required="true">  

        <cfquery name="checkUser" >
            select role from userAdmin
            where uname=<cfqueryparam value="#arguments.user#" cfsqltype="cf_sql_varchar">
            and pass=<cfqueryparam value="#arguments.pass#" cfsqltype="cf_sql_varchar">
        </cfquery> 
        <cfset session.role = checkUser.role>
        
        <cfif checkUser.recordCount >
            <cfif checkUser.role EQ "user">
                <cfset session.login = true>
                <cflocation url="./homePage.cfm">    
            <cfelseif checkUser.role EQ "admin" || checkUser.role EQ "editor">
                <cfset session.login = true>
                <cflocation url="./homePage.cfm">  
            </cfif>
        <cfelse>
            <cfreturn "Login Failed!..Invalid Username or Password!">          
        </cfif>
    </cffunction>

    <cffunction  name="displayPage" access="public" >
        <cfquery name="displayData" >
            select *  from pageTable
        </cfquery>
        <cfreturn displayData>
    </cffunction>

    <cffunction  name="displayUser" access="public" >
        <cfargument  name="pid" required="true">
        <cfquery name="displayUserData" >
            select * from pageTable
            where pid=<cfqueryparam value="#arguments.pid#" cfsqltype="cf_sql_varchar"> 
        </cfquery> 
        <cfreturn displayUserData>
    </cffunction>

    <cffunction  name="savePage" access="public" returntype="string">
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
            <cfreturn "Edited Successfully">
        <cfelseif arguments.idPage EQ 0>
            <cfquery name="findPage">
                select 1 from pageTable 
                where pname = <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">
            </cfquery>
            <cfif findPage.recordCount>
                <cfreturn "Title is already Exist">
            <cfelse>
                <cfquery name="insertData" >
                    insert into pageTable (pname, pdesc)
                    values (
                        <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#arguments.desc#" cfsqltype="cf_sql_varchar">
                    )
                </cfquery>            
                <cfreturn "Added Successfully">
            </cfif>
        </cfif>
        <cfreturn "Invalid">
    </cffunction>
   
    <cffunction  name="valueDisplay" access="public" > 
        <cfargument  name="idPage" required="true">   
        <cfquery name="displayValue" >
            select pname,pdesc from pageTable
            where pid=<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_varchar"> 
        </cfquery> 
        <cfreturn displayValue>
    </cffunction> 

    <cffunction  name="deletePage" access="remote" >
        <cfargument  name="idPage" required="true">
        <cfquery name="deleteTheData" >
            delete from pageTable
            where pid=<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation  url="../view/list.cfm">
    </cffunction>
 
</cfcomponent>
 