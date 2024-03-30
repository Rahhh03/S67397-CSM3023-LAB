<%-- 
    Document   : radius
    Created on : 30 Mar 2024, 14:26:04
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculate Area</title>
    </head>
    <body> 
        <h3>Please enter the radius...!</h3>
   <input id="radius">
    <button type="button" onclick="myFunction()">
        OK
    </button>
    <p id="demo"></p>
    <script>
        function myFunction(){
            var x, text;

            // get the value of the input field with id="radius"
            x = document.getElementById("radius").value;

            // if x is not a number
            if (isNaN(x)) {
                text = "Input not valid";
            } else {
                // calculate the area and round it to 2 decimal places
                var area = 3.14 * x * x;
                area = area.toFixed(1); // round to 2 decimal places
                text = "The area of circle = " + area;
            }
            document.getElementById("demo").innerHTML = text;
        }
    </script>
</body>
</html>