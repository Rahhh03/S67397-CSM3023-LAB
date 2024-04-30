<%-- 
    Document   : forward
    Created on : 29 Apr 2024, 01:05:35
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action(forward)</title>
    </head>
    <body>
        <h2>Using JSP: forward to display user info.</h2>
        <jsp:include page="forwardInfo.jsp">
            <jsp:param name="U_Name" value="Fouad Abdulameer"/>
            <jsp:param name="Email" value="fouadaug@gmail.com"/>
            <jsp:param name="Nationality" value="Iraqi"/>
            <jsp:param name="Background" value="Developer"/>
        </jsp:include>
    </body>
</html>
