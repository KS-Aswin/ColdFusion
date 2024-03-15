<!--- components/q11.cfc --->
<cfcomponent>
    <cffunction name="multiply" access="public" returnType="numeric">
        <cfargument name="FirstNum" type="numeric">
        <cfargument name="SecondNum" type="numeric">
        <cfargument name="ThirdNum" type="numeric" default="1">
        <cfargument name="FourthNum" type="numeric"  default="1">
        <cfreturn arguments.FirstNum * arguments.SecondNum * arguments.ThirdNum * arguments.FourthNum>
    </cffunction>
</cfcomponent>
