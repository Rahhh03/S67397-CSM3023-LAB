<%-- 
    Document   : fmt_formatDate
    Created on : 14 May 2024, 02:24:38
    Author     : Nur Atirah S67397
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Use fmt_formatDate features</title>
    </head>
    <body>
        <h1>fmt:parseDate features</h1>
        
        <c:set var="now" value="<%=new java.util.Date()%>"/>
        <p>Time (fmt:formatDate type="time):
            <strong><fmt:formatDate type="time" value="${now}"/></strong>
        </p>
        <p>date (fmt:formatDate type="date):
            <strong><fmt:formatDate type="date" value="${now}"/></strong>
        </p>
        <p>Date, Time Short (fmt:formatDate type="both" dateStyle="short"):
            <strong><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now}"/></strong>
        </p>
        <p>Date, Time Medium (fmt:formatDate type="both" dateStyle="medium" timeStyle="medium"):
            <strong> <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${now}"/> </strong>
        </p>
        <p>Date Time Long (fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}"):
            <strong> <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}"/> </strong>
        </p>
        <p>Date, Time (dd-MM-yyy HH:mm:ss):
            <strong> <fmt:formatDate pattern="dd-MM-yyy HH:mm:ss" value="${now}"/></strong>
        </p>
         <!-- Store in variable -->
         <fmt:formatDate pattern="dd-MM-yyy HH:mm" value="${now}" var="nowString"/>
        <p> Now String (dd-MM-yyy HH:mm):
            <strong> <c:out value="${nowString}"/> </strong></p>
    </body>
</html>
