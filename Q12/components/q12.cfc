<cfcomponent>
    <cffunction name="getAllNames" access="public" returnType="query">
        <cfquery name="allData" datasource="DESKTOP-89AF345">
            SELECT * FROM People
        </cfquery>
        <cfreturn allData>
    </cffunction>

    <cffunction name="getFirstName" access="public" returnType="string">
        <cfargument name="num" type="numeric" required="true">
        <cfquery name="nthRow" datasource="DESKTOP-89AF345">
        SELECT FirstName
        FROM (
            SELECT FirstName, ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS row_num
            FROM People
        ) AS subquery
        WHERE row_num = <cfqueryparam value="#arguments.num#" cfsqltype="cf_sql_integer">
    </cfquery>
        <cfreturn nthRow.FirstName>
    </cffunction>
    
</cfcomponent>