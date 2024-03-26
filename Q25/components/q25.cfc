<cfcomponent>
    <cffunction name="word" access="public" type="any">
        <cfargument name="text">
            <cfquery name="queryCheck" datasource="DESKTOP-89AF345">
                SELECT COUNT(*) AS count
                FROM insertText
                WHERE text = <cfqueryparam value="#arguments.text#" cfsqltype="cf_sql_varchar">
            </cfquery>

            <cfif queryCheck.count GT 0>
                <cfreturn "Data already present">
                <cfelse>
                    <cfif len(trim(arguments.text))>
                        <cfset words = listToArray(arguments.text, " ")>
                            <cfloop array="#words#" index="word">
                                <cfquery datasource="DESKTOP-89AF345" name="insertWord">
                                    INSERT INTO insertText(text) 
                                    VALUES (<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">)
                                </cfquery>
                            </cfloop>
                    </cfif>
                    <cfreturn "Data Added">
            </cfif>
    </cffunction>


    <!--- function for countWord.cfm--->
    <!---
    <cffunction name="count" access="public" returntype="any">
        <cfargument name="text" type="string" required="true">
        
        <cfset wordCounts = {}>

        <!--- Split the input data into individual words --->
        <cfset words = reMatch("[a-zA-Z]+", arguments.text)>

        <!--- Loop through the words and update the count in the structure --->
        <cfloop array="#words#" index="word">
            <cfif len(trim(word)) GT 2 AND NOT isNumeric(word)>
                <cfset word = lcase(trim(word))>
                <cfif structKeyExists(wordCounts, word)>
                    <cfset wordCounts[word] = wordCounts[word] + 1>
                <cfelse>
                    <cfset wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>

        <cfset sortedData = structSort(wordCounts, "numeric", "desc")>
        <cfset sortedWords=[]>
        <cfloop array="#sortedData#" index="word">
            <cfset arrayAppend(sortedWords, [word, wordCounts[word]])>
        </cfloop>
        <cfreturn sortedWords>

        <!---strat--->
        <cfloop array="#sortedData#" index="word">
            <!--- Insert each word into the database --->
            <cfquery datasource="DESKTOP-89AF345" name="insertWord">
                INSERT INTO insertText(text) 
                VALUES (<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">)
            </cfquery>
        </cfloop>

        <cfquery name="checkQuery" datasource="DESKTOP-89AF345">
            SELECT * from
            FROM insertText
        </cfquery>
        <cfreturn checkQuery> 

    </cffunction>--->
</cfcomponent>