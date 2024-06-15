<%-- 
    Document   : ex.login
    Created on : 15 Jun 2024, 15:53:34
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <form action="ex.doLogin.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" maxlength="15" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" maxlength="10" required><br><br>
        <input type="submit" value="Login">
    </form>
    <% 
        if (request.getAttribute("errorMessage") != null) {
            out.println("<p style='color:red'>" + request.getAttribute("errorMessage") + "</p>");
        }
    %>
</body>
</html>
