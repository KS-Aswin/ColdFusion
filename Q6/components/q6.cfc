<cfcomponent>
    <cffunction name="processForm" >
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfset local.struct = {}>
        <cfset local.struct[arguments.key] = arguments.value>
        <cfdump  var="#local.struct#">
    </cffunction>
</cfcomponent>
