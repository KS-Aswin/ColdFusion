<cfcomponent>

    <cffunction name="jsonFile" returntype="string">
        <cfset jsonList ='[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Aswin","Age":23,"LOCATION":"Idukki"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}] '>
        <cfset var row = "">
        <cfset var json = deserializeJSON(#jsonList#)>
        <cfloop array="#json#" index="details">
            <cfset row &= "<tr><td>#details.Name#</td><td>#details.Age#</td><td>#details.LOCATION#</td></tr>">
        </cfloop>
        <cfreturn row>
       
    </cffunction>

</cfcomponent>
