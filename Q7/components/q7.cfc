<cfcomponent>

    
    
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
                <!--- Initialize array if key doesn't exist, otherwise append to existing array --->
                <cfif not structKeyExists(session.keyValuePairs, arguments.formData.key)>
                    <cfset session.keyValuePairs[arguments.formData.key] = [arguments.formData.value]>
                <cfelse>
                    <!--- Convert existing value to array if it's a string --->
                    <cfif isSimpleValue(session.keyValuePairs[arguments.formData.key])>
                        <cfset session.keyValuePairs[arguments.formData.key] = [session.keyValuePairs[arguments.formData.key]]>
                    </cfif>
                    <!--- Append new value to existing array --->
                    <cfset arrayAppend(session.keyValuePairs[arguments.formData.key], arguments.formData.value)>
                </cfif>
            </cfif>
        </cfif>
    </cffunction>
    
    <cffunction name="getKeyValuePairs" access="public" returntype="struct">
        <cfreturn session.keyValuePairs ?: {}>
    </cffunction>

</cfcomponent>
