component{
    remote any function uploadExcel(file){
        cfspreadsheet( action="read", src=expandPath( '../ExcelFiles/' ), nameconflict="makeunique", query="foo", headerrow=1, excludeHeaderRow=true );
        local.path=ExpandPath("./TextFiles/")>
        

    }
}
    
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
