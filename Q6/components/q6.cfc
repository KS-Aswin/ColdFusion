<!--- q6.cfc --->
<cfcomponent>
    <cffunction name="processForm" returntype="struct">
        <cfargument name="formData" type="struct" required="true">
        
        <!--- Initialize keyValuePairs structure --->
        <cfset var keyValuePairs = {}>
        
        <!--- Check if form is submitted --->
        <cfif structKeyExists(arguments.formData, "submit")>
            <!--- Check if form fields are not empty --->
            <cfif len(trim(arguments.formData.key)) and len(trim(arguments.formData.value))>
                <!--- Add form data to keyValuePairs structure --->
                <cfset keyValuePairs[arguments.formData.key] = arguments.formData.value>
            </cfif>
        </cfif>
        
        <!--- Return the keyValuePairs structure --->
        <cfreturn keyValuePairs>
    </cffunction>
</cfcomponent>
