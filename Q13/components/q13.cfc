<cfcomponent>
    <cffunction name="find" access="public" returnType="string">
        <cfargument name="string">
        <cfargument name="word">
        <cfset string=arguments.string> 
        <cfset word=arguments.word>
        <cfset count = 0>
        <cfset wordList = ListToArray(string, " ")>
        <cfloop from="1" to="#ArrayLen(wordList)#" index="i">
            <cfif CompareNoCase(wordList[i], #word#) EQ 0>
                <cfset count = count + 1>
            </cfif>
        </cfloop>
        <cfreturn count>
    </cffunction>
</cfcomponent>