<cfcomponent>
    <cffunction name="find" access="public" returnType="string">
        <cfargument name="string">
        <cfargument name="word">
        <cfset local.string=arguments.string> 
        <cfset local.word=arguments.word>
        <cfset local.count = 0>
        <cfset local.wordList = ListToArray(local.string, " ")>
        <cfloop from="1" to="#ArrayLen(local.wordList)#" index="i">
            <cfif CompareNoCase(local.wordList[i], local.word) EQ 0>
                <cfset local.count = local.count + 1>
            </cfif>
        </cfloop>
        <cfreturn local.count>
    </cffunction>
</cfcomponent>