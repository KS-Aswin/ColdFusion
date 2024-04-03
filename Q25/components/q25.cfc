<cfcomponent>
    <cffunction name="insertingData" access="public" type="any">
        <cfargument name="data">
            <cfquery>
                delete from ItemTable
            </cfquery>
            <cfif len(trim(arguments.data))>
                <cfset local.countWord = listToArray(arguments.data," ")>
                    <cfloop array="#countWord#" index="word">
                        <cfquery name="checkData" datasource="DESKTOP-89AF345">
                            select word from ItemTable
                            where word=<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">
                        </cfquery>
                        <cfif checkData.recordCount>
                            <cfcontinue>  
                            <cfelse>
                            <cfquery datasource="DESKTOP-89AF345" name="insertWord" result="insertdata">
                                INSERT INTO ItemTable(word) 
                                VALUES (<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">)
                            </cfquery>
                        </cfif>
                    </cfloop>
                <cfreturn "Data inserted successfully">
            </cfif>
    </cffunction>
 

    <cffunction name="countWords" access="public">
        <cfargument name="data" required="true">
        <cfset local.wordCounts = {}>
        <cfset local.countWord = reMatch("[a-zA-Z]+", arguments.data)>
        <cfloop array="#local.countWord#" index="word">
            <cfif len(trim(word)) GT 2 AND NOT isNumeric(word)>
                <cfset word = lcase(trim(word))>
                <cfif structKeyExists(local.wordCounts, word)>
                    <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                <cfelse>
                    <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfset local.sortedData = structSort(local.wordCounts, "numeric", "desc")>
       
        <cfset local.sortedWords=[]>
        <cfloop array="#local.sortedData#" index="word">
            <cfset arrayAppend(local.sortedWords,[local.wordCounts[word],word])>
        </cfloop>

        <cfquery>
            delete from ItemTable
        </cfquery>
        <cfloop array="#sortedWords#" index="word">
            <cfquery name="insertWord" result="insertdata">
                INSERT INTO ItemTable(word) 
                VALUES (<cfqueryparam value="#word[2]#">)
            </cfquery>
        </cfloop>

        <cfquery name="forDisplay"  result="display">
            SELECT * FROM ItemTable 
            ORDER BY len(word) desc
        </cfquery>
      
        <cfset local.sample=[]>
        <cfloop query="#forDisplay#">
            <cfset session.mystruct[#word#] = structFind(local.wordCounts,#word#)>
        </cfloop>
        <cfset local.data=structSort(session.mystruct,"numeric", "desc")>

        <cfloop array="#data#" index="word">
            <cfset arrayAppend(local.sample,[local.wordCounts[word],word])>
        </cfloop>
        <cfreturn "#local.sample#">
    </cffunction>

    <cffunction name="forColor" access="public">
        <cfargument name="data" required="true">
        <cfset local.wordCounts = {}>
        <cfset local.countWord = reMatch("[a-zA-Z]+", arguments.data)>
        <cfloop array="#local.countWord#" index="word">
            <cfif len(trim(word)) GT 2 AND NOT isNumeric(word)>
                <cfset word = lcase(trim(word))>
                <cfif structKeyExists(local.wordCounts, word)>
                    <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                <cfelse>
                    <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfset local.sortedData = structSort(local.wordCounts, "numeric", "desc")>
       
        <cfset local.sortedWords=[]>
        <cfloop array="#local.sortedData#" index="word">
            <cfset arrayAppend(local.sortedWords,[local.wordCounts[word],word])>
        </cfloop>

        <cfquery>
            delete from ItemTable
        </cfquery>

        <cfloop array="#sortedWords#" index="word">
            <cfquery name="insertWord" result="insertdata">
                INSERT INTO ItemTable(word)
 
                VALUES (<cfqueryparam value="#word[2]#">)
            </cfquery>
        </cfloop>

        <cfquery name="forDisplay"  result="display">
            SELECT * FROM ItemTable 
            ORDER BY len(word) desc
        </cfquery>
      
        <cfset local.sample=[]>
        <cfloop query="#forDisplay#">
            <cfset session.mystruct[#word#] = structFind(local.wordCounts,#word#)>
        </cfloop>
        <cfset local.data=structSort(session.mystruct,"numeric", "desc")>

        <cfloop array="#data#" index="word">
            <cfset arrayAppend(local.sample,[local.wordCounts[word],word])>
        </cfloop>

        <cfset local.colorData=[]>
        <cfset local.minFontSize=10>
        
        <cfloop array="#sample#" index="word">
            <cfset Red = randRange(0, 255)>
            <cfset Green = randRange(0, 255)>
            <cfset Blue = randRange(0, 255)>
            <cfset Color = "##"&formatBaseN(Red, '16')&formatBaseN(Green, '16')&formatBaseN(Blue, '16')>
            <cfset fontSize = local.minFontSize + (word[1]*5)>
            <cfset arrayAppend(local.colorData, {word = word, fontSize = fontSize, color = Color})>
        </cfloop>
    
      <cfreturn local.colorData>
   </cffunction>

</cfcomponent>
