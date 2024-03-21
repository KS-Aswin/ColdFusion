
<cfcomponent>
    <cffunction name="printCount" access="public">
        <cfargument name="file" type="any" required="true">
        
        
        
        <cffile action="upload" filefield="form.file" destination="#ExpandPath("./TextFiles/")#" nameconflict="makeunique">
        <cfset local.path=ExpandPath("./TextFiles/")>
        <cfset local.file=cffile.clientFile>
        <cfset allpath="#local.path#"&"#local.file#">
        
        
        <cfif cffile.contentType EQ "text">
            <cfset fileContent = fileRead(allpath)>
            <cfset wordList = ListToArray(fileContent," ")>
            <cfset words = ArrayLen(wordList)>
            <cfreturn "The number of word in the Selected Text file is : "& words>
        <cfelse>
            <cfreturn "Upload a Text File">
        </cfif>
        
       
    </cffunction>
</cfcomponent>
