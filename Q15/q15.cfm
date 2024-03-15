<!DOCTYPE html>
<html>
<head>
    <title>Multiply Numbers</title>
    <link rel="stylesheet" type="text/css" href="./styles/style.css">
</head>
<body>  

    <cfoutput>

        <!---<cfobject> method--->

        <div class="cfObject">
            <h2>Using cfobject : </h2>
            <cfobject name="multiplyObj" type="component" component="components/q15">
            <h5>#multiplyObj.multiply(8,6)#</h5>
            <h5>#multiplyObj.multiply(1,2,3)#</h5>
            <h5>#multiplyObj.multiply(1,2,3,4)#</h5>
        </div>

        <!---<createobject> method--->
        
        <div class="createOblect">
            <h2>Using createobject : </h2>
            <cfset obj = createObject("component", "components.q15")>
            <h5>#obj.multiply(10,1)#</h5>
            <h5>#obj.multiply(10,20,30)#</h5>
            <h5>#obj.multiply(7,12,23,3)#</h5>
        </div>

        <!---<cfinvoke> method--->
        
        <div class="cfInvoke">
            <h2>Using cfinvoke : </h2>
            <cfinvoke component="components/q15" method="multiply" FirstNum="10" SecondNum="20" returnvariable="result"></cfinvoke>
            <h5>#result#</h5>
            <cfinvoke component="components/q15" method="multiply" FirstNum="10" SecondNum="20" ThirdNum="30" returnvariable="result"></cfinvoke>
            <h5>#result#</h5>
            <cfinvoke component="components/q15" method="multiply" FirstNum="10" SecondNum="20" ThirdNum="30" FourthNum="30" returnvariable="result"></cfinvoke>
            <h5>#result#</h5>
        </div>

    </cfoutput>
    
</body>
</html>
