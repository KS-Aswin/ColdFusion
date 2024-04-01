<cfcomponent>
    <cffunction name="processForm" access="public">
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfif not structKeyExists(session, "newStruct")>
            <cfset session.newStruct = structNew()>
        </cfif>
        <cfif StructKeyExists(session.newStruct, arguments.key)>
                <cfdump var=" The Key #arguments.key# Already Exists" >
            <cfelse>
               <cfset session.newStruct["#arguments.key#"] = "#arguments.value#">	
        </cfif>
    </cffunction>
</cfcomponent>