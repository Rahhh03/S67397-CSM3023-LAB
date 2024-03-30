<%-- 
    Document   : AttributelsSet
    Created on : 28 Mar 2024, 01:17:36
    Author     : NUR ATIRAH BINTI SHAMSUDDIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP</title>
    </head>
    <body>
        <% session.setAttribute("user","Fouad Abdulameer");%>
        <a href="GetAttribute.jsp"><h2>Click here to get user name</h2></a>
        <br>
        <a href="MathematicsOperation.jsp"><h2>Results of mathematics operation</h2></a>
        
    </body>
</html>
