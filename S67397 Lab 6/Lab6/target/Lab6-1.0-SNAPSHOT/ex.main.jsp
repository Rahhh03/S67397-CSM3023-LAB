<%-- 
    Document   : ex.main
    Created on : 15 Jun 2024, 15:55:22
    Author     : Atirah s67397
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) request.getAttribute("username");
    String firstname = (String) request.getAttribute("firstname");
    String lastname = (String) request.getAttribute("lastname");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
</head>
<body>
    <h2>Welcome, <%= firstname %> <%= lastname %>!</h2>
    <p>Your username: <%= username %></p>
</body>
</html>
