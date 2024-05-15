<%-- 
    Document   : Radius
    Created on : 15 May 2024, 14:39:33
    Author     : Nur Atirah s67397
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise 1</title>
        <style>
            label{
                margin-right: 50px;
            }
        </style>
    </head>
    <body>
        <h1>Calculate the Area and Perimeter of Circle</h1> 
        <form method="post" action="">
            <label for="rad">Radius:</label>
            <input type="number" id="rad" name="rad" placeholder="Key-in the radius" required>
            <br><br>
            <input type="submit" value="Submit">
            <input type="reset" value="Cancel">
        </form>
        
        <br><br>
        <h1>Result:</h1>
        <%
            String radStr = request.getParameter("rad");
            if (radStr != null && !radStr.isEmpty()) {
                double rad = Double.parseDouble(radStr);
                double area = Math.PI * rad * rad;
                double perimeter = 2 * Math.PI * rad;
        %>
                <p>Radius: <fmt:formatNumber value="<%= rad %>" /></p>
                <p>Area: <fmt:formatNumber value="<%= area %>" /></p>
                <p>Perimeter: <fmt:formatNumber value="<%= perimeter %>" /></p>
        <%
            }
        %>
    </body>
</html>
