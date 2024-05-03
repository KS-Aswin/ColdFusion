<cfcomponent>
    <cffunction name="uploadExcel" access="public" returnType="any">
        <cfargument name="file" type="any" required="true">
        <cffile action="upload" filefield="file" destination="#ExpandPath("./assets/excelFiles/")#" nameconflict="makeunique">
        <cfset local.path=ExpandPath("./assets/excelFiles/")>
        <cfset local.file=cffile.serverFile>
        <cfset local.allpath="#local.path#"&"#local.file#">
        <cffile action="read" file="#local.allpath#" variable="fileContent">
        <cfspreadsheet action="read" src="#local.allpath#"  query="spreadSheet" headerrow="1"> 
        <cfif structKeyExists(spreadSheet, "Name") and structKeyExists(spreadSheet, "Place") and structKeyExists(spreadSheet, "Age")>   
            <cfdump  var="#spreadSheet#">
            <cfreturn "The file contains all required columns">
        <cfelse>
            <cfreturn "The file does not contain the required column!">
        </cfif>
    </cffunction>
</cfcomponent>
