
<cfcomponent>
    <cffunction name="printCount" access="public">
        <cfargument name="file" type="any" required="true">
        
        
        
        <cffile action="upload" filefield="form.file" destination="#ExpandPath("./TextFiles/")#" nameconflict="makeunique">
        <cfset local.path=ExpandPath("./TextFiles/")>
        <cfset local.file=cffile.clientFile>
        <cfset allpath="#local.path#"&"#local.file#">
        
        
        <cfif cffile.contentType EQ "text">
            <cfset local.fileContent = fileRead(allpath)>
            <cfset local.wordList = ListToArray(local.fileContent," ")>
            <cfset local.words = ArrayLen(local.wordList)>
            <cfreturn "The number of word in the Selected Text file is : "& local.words>
        <cfelse>
            <cfreturn "Upload a Text File">
        </cfif>
        
       
    </cffunction>
</cfcomponent>
