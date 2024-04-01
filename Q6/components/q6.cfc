<cfcomponent>
    <cffunction name="processForm" >
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfset struct = {}>
        <cfset struct[arguments.key] = arguments.value>
        <cfdump  var="#struct#">
    </cffunction>
</cfcomponent>
