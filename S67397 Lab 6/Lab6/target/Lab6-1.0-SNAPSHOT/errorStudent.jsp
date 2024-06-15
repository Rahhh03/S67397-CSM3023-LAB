<%-- 
    Document   : errorStudent
    Created on : 19 May 2024, 00:22:39
    Author     : nur atirah s67397
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 3</title>
    </head>
    <body>
        <form id="errorFrm" action="insertStudent.jsp" method="post">
            <h1>Lab 6 - Task 4 - Perform creating and retrieving records via JSP page when inserting record..!</h1>
            <p><jsp:expression>exception.getMessage()</jsp:expression></p>
            <br>
        </form>
    </body>
</html>
