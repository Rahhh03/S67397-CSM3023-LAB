<%-- 
    Document   : GetAttribute
    Created on : 28 Mar 2024, 01:24:17
    Author     : NUR ATIRAH BINTI SHAMSUDDIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>implicit JSP</title>
    </head>
    <body>
        <% 
            String name = (String) session.getAttribute("user");
            out.println("User Name is "+name);
        %>
    </body>
</html>
