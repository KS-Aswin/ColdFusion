<!--- q7.cfc --->
<cfcomponent>
    <cffunction name="init" access="public" returntype="q7">
        <cfreturn this>
    </cffunction>
    
    <cffunction name="processForm" returntype="void">
        <cfargument name="formData" type="struct" required="true">
        
        <!--- Ensure session is initialized --->
        <cfif not structKeyExists(session, "keyValuePairs")>
            <cfset session.keyValuePairs = {}>
        </cfif>
        
        <cfif structKeyExists(arguments.formData, "submit")>
            <!--- Get the submitted key and value --->
            <cfparam name="arguments.formData.key" default="">
            <cfparam name="arguments.formData.value" default="">
            
            <!--- Check if the key is not empty before adding to the session --->
            <cfif len(trim(arguments.formData.key))>
                <!--- Append the new key-value pair to the session structure --->
                <cfset session.keyValuePairs[arguments.formData.key] = arguments.formData.value>
            </cfif>
        </cfif>
    </cffunction>
    
    <cffunction name="getKeyValuePairs" access="public" returntype="struct">
        <cfreturn session.keyValuePairs>
    </cffunction>
</cfcomponent>
