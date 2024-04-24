<%-- 
    Document   : CalculateTemp
    Created on : 21 Apr 2024, 10:49:24
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
        <p>Temperature in Celsius:  <%= request.getParameter("celsius") != null ? request.getParameter("celsius") : "N/A" %></p>
        <p>Temperature in Fahrenheit :
        <% 
            int fahrenheit = 0;
            int celsius = Integer.parseInt(request.getParameter("celsius"));
            fahrenheit = ((9 * celsius) / 5) + 32;
            out.print(fahrenheit);
        %>
        </p>
    </body>
</html>
