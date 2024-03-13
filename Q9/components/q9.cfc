<cfcomponent>

    <cffunction name="init" access="public" returntype="q9">
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
                <!--- Check if the key already exists in the session --->
                <cfif structKeyExists(session.keyValuePairs, arguments.formData.key)>
                    <!--- Display a message indicating duplication occurred --->
                    <cfset arguments.formData.duplicationMessage = "Duplication occurred for key '#arguments.formData.key#'. Value remains unchanged.">
                    <!-- Set the duplication message in the form scope -->
                    <cfset form.duplicationMessage = arguments.formData.duplicationMessage>
                    <!-- Set the key in the form scope -->
                    <cfset form.key = arguments.formData.key>
                <cfelse>
                    <!--- Append the new key-value pair to the session structure --->
                    <cfset session.keyValuePairs[arguments.formData.key] = arguments.formData.value>
                </cfif>
            </cfif>
        </cfif>
    </cffunction>
    
    <cffunction name="getKeyValuePairs" access="public" returntype="struct">
        <cfif structKeyExists(session, "keyValuePairs")>
            <cfreturn session.keyValuePairs>
        <cfelse>
            <cfreturn {}>
        </cfif>
    </cffunction>

</cfcomponent>
