<%-- 
    Document   : Message1
    Created on : 13 May 2024, 19:56:46
    Author     : Nur Atirah S67397
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page info="Using JSP Standard Action to call JavaBEans" %>
<%@page import="java.util.Date, lab5.com.Message" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 1</title>
    </head>
    <body>
        <h1>Using JSP Scriptlet to call JavaBeans</h1>
        <%
            //create an object
            Message objMsg = new Message();
            
            //asign value..
            objMsg.setMsg("Welcome to CSF3107 course....!");
            
            //display value..
            out.println("<p>" + objMsg.getMsg() + "</p>");
            
            //add date..
            out.println("<p>Current date is " + new java.util.Date() + "</p>");
        %>
    </body>
</html>
