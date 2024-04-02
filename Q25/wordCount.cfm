<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/style.css">
    <title>Document</title>
</head>
<body>
    <div>
        <h3>Data and its Count</h3>
    </div>
    <div>
        <form action="wordCount.cfm" method="post">
            <textarea name="data" placeholder="Enter the data" required></textarea>
            <input type="submit"  name="submit">
        </form>
    </div>
    
    <cfoutput>
        <div>
            <cfif StructKeyExists(form, "data")>
                <cfset local.obj=createObject("component","components/q25")>
                <cfset local.keyandvalue=local.obj.countWords(form.data)>
                <cfif arrayLen(local.keyandvalue)>
                    <div>
                        <table>
                            <tr>
                                <th>Data</th>
                                <th>Count</th>
                            </tr>
                            <cfloop array="#local.keyandvalue#" index="word">
                                <tr>                
                                    <th>#word[2]#</th>
                                    <th>#word[1]#</th>
                                </tr> 
                            </cfloop>
                        </table>
                    </div>
                </cfif>
            </cfif>
        </div>
    </cfoutput>
</body>
</html>