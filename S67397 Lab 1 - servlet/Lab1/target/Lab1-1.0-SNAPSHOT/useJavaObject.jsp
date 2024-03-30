<%-- 
    Document   : useJavaObject
    Created on : 28 Mar 2024, 00:58:18
    Author     : NUR ATIRAH BINIT SHAMSUDDIN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using Java's Object</title>
    </head>
    <body>
        <h1>Display Current Date and perform auto refresh header</h1>
        <%
            Date todayDate = new Date();
            out.println("<p>Current date and time is " + todayDate.toString() + "</p>");
        %>
        <%
            //set refresh, autoload time as 5 seconds
            response.setIntHeader("Refresh",5);
        %> 
    </body>
</html>
