<%-- 
    Document   : convertTemp
    Created on : 21 Apr 2024, 10:43:00
    Author     : NUR ATIRAH BT SHAMSUDDIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise 1</title>
    </head>
    <body>
        <h1>Convert temperatures to Fahrenheit temperatures</h1>
        <h3>Formula: F = (9/5)C + 32</h3>
        
        <form action="CalculateTemp.jsp" method="post">
            <label for="celsius">Enter temperature in Celsius: </label>
            <input type="number" id="celsius" name="celsius"><br><br>
        
            <input type="submit" value="Submit"> 
            <input type="reset" value="Cancel">
        </form>
    </body>
</html>
