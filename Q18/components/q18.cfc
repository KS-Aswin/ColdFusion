<cfcomponent>
    <cffunction name="queryPrint" access="public" returnType="string">
        <cfset values = queryNew("id,name,email","integer,varchar,varchar",
        [[1,"John Skeet","jon@gmail.com"],
        [2,"George","george@gmail.com"],
        [3,"Rose","rose@gmail.com"]])>
        <cfdump var = "#values#" label="Query Details">
    </cffunction>
</cfcomponent>
