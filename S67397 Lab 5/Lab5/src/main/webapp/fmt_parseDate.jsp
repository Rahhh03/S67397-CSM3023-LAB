<%-- 
    Document   : fmt_parseDate
    Created on : 14 May 2024, 02:37:22
    Author     : Nur Atirah S67397
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <c:set var="dateTimeString" value="17-11-2015 11:49"/>
        <h4>
            dateTimeString:
            <c:out value="${dateTimeString}"/>
        </h4>
        
        <!-- Psrsing a date time string, and store in a variable type of java-->
        <fmt:parseDate value="${dateTimeString}" type="both" var="parsedDateTime" pattern="dd-MM-yyyy HH:mm" />
        <p>
            The date time after parsing:
            <c:out value="${parsedDateTime}"/>
        </p>  
        <p>
            Date only (dd-MM-yyyy):
            <fmt:formatDate value="${parsedDateTime}" pattern="dd-MM-yyyy"/>
        </p>
    </body>
</html>
