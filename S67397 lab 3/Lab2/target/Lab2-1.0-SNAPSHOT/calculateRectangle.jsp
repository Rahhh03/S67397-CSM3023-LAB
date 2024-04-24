<%-- 
    Document   : calculateRectangle
    Created on : 24 Apr 2024, 18:56:05
    Author     : NUR ATIRAH BT SHAMSUDDIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise 2</title>
    </head>
    <body>
        <h1>Calculating Rectangle</h1>
        <form action="processCalculateRectangle.jsp" method="post">
            <h3>First Rectangle</h3>
            <label for="firstWidth">Width: </label>
            <input type="number" id="firstWidth" name="firstWidth"><br><br>
            <label for="firstLength">Length: </label>
            <input type="number" id="firstLength" name="firstLength"><br><br>
            
            <h3>Second Rectangle</h3>
            <label for="secondWidth">Width: </label>
            <input type="number" id="secondWidth" name="secondWidth"><br><br>
            <label for="secondLength">Length: </label>
            <input type="number" id="secondLength" name="secondLength"><br><br>
            
            <br>
            <input type="submit" value="Submit"> 
            <input type="reset" value="Cancel">
        </form>
    </body>
</html>
