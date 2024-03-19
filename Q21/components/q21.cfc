<cfcomponent>

    <cffunction name="sendWish" returntype="string">
        <cfargument name="name" required="true" >
        <cfargument name="mail" required="true" >
        <cfargument name="wishes" required="true" >
        <cfargument name="img" required="true" type="any">

        <cfset local.path = ExpandPath("./assets/")>

        <cffile action="upload" destination="#local.path#" nameConflict="MakeUnique">
        <cfset local.image = cffile.clientFile>

        <cfmail from="aswin.ks@techversantinfotech.com" to="#arguments.mail#" subject="#arguments.wishes#"
         mimeattach="#local.path#/#local.image#">#arguments.wishes#</cfmail>
         <cfreturn "Email sent successfully">
       
    </cffunction>

</cfcomponent>
