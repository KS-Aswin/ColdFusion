<cfcomponent>

    <cffunction name="jsonFile" returntype="string">
        <cfset local.jsonList ='[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Aswin","Age":23,"LOCATION":"Idukki"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}] '>
        <cfset local.row = "">
        <cfset local.json = deserializeJSON(#local.jsonList#)>
        <cfloop array="#json#" index="details">
            <cfset local.row &= "<tr><td>#details.Name#</td><td>#details.Age#</td><td>#details.LOCATION#</td></tr>">
        </cfloop>
        <cfreturn local.row>
       
    </cffunction>

</cfcomponent>
