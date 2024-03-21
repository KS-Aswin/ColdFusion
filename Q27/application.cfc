<cfcomponent>    
    <cfset this.name = "index"> 
    <cfset this.applicationTimeout = createTimeSpan(0, 0, 0, 60)> 
    <cfset this.sessionManagement = true> 
    <cfset this.sessionTimeout = createTimeSpan(0, 0, 2, 0)> 
    <cfset this.datasource = "DESKTOP-89AF345">
    <cffunction name="onApplicationStart" returnType="void">
    </cffunction>

    <cffunction name="onSessionStart" returnType="boolean" output="false">
        <cfset session.struct = {}>
        <cfset session.structFirst={}>
        <cfset session.structSecond={}>
        <cfset session.structThird={}>
        <cfset session.captchaText = RandRange(1000, 9999)>
        <cfset session.login=false>
        <cfreturn true>
    </cffunction>    
</cfcomponent>