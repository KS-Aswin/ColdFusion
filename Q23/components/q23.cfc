<cfcomponent>

    <cffunction name="uploadData" access="remote">
        <cfargument name="dDown" required="true">
        <cfargument name="month" required="true">
        <cfargument name="day" required="true">
        <cfargument name="year" required="true">
        <cfargument name="fname" required="true">
        <cfargument name="lname" required="true">
        <cfargument name="eMail" required="true">
        <cfargument name="phFirst" required="true">
        <cfargument name="phMid" required="true">
        <cfargument name="phLast" required="true">
        <cfset yr = year&"/"&month&"/"&day>
        <cfset ph = phFirst&phMid&phLast>
    
      
        <cfquery name = "dataUpload" datasource="DESKTOP-89AF345" >
            INSERT INTO fileData (position, years, fname, lname, email, ph )
            VALUES (
                <cfqueryparam value="#arguments.dDown#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#yr#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.fname#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.lname#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.eMail#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#ph#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
    </cffunction>

</cfcomponent>
