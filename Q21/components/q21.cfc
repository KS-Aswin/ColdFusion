<cfcomponent>

    <cffunction name="sendWish" returntype="string">
        <cfargument name="name" required="true" >
        <cfargument name="mail" required="true" >
        <cfargument name="subject" required="true" >
        <cfargument name="test" required="true" >
        <cfargument name="img" required="true" type="any">

        <cfset local.path = ExpandPath("./assets/")>

        <cffile action="upload" destination="#local.path#" nameConflict="MakeUnique">
        <cfset local.image = cffile.clientFile>

        <cfmail from="aswin.ks@techversantinfotech.com" to="#arguments.mail#" subject="#arguments.subject#"
         mimeattach="#local.path#/#local.image#">#arguments.test#</cfmail>
         <cfreturn "Email sent successfully">
       
    </cffunction>

</cfcomponent>
