<%-- 
    Document   : processUser
    Created on : 13 May 2024, 23:46:16
    Author     : Nur Atirah S67397
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 4.2</title>
        <style>
            p{
                color: green;
            }
        </style>
    </head>
    <body>
        <h1>Retrieve info using c:param & display it using c:out</h1>
        <c:set var="fName" value="${param.firstname}"/>
        <c:set var="sName" value="${param.surname}"/>
        <c:set var="userGender" value="${param.gender}"/>
        <c:set var="userType" value="${param.user}"/>
        <c:set var="userLanguage" value="${param.language}"/>
        
        <c:url var="processUrl" value="processUser.jsp">
            <c:param name="firstname" value="${fName}" />
            <c:param name="surname" value="${sName}" />
            <c:param name="gender" value="${userGender}" />
            <c:param name="user" value="${userType}" />
            <c:param name="language" value="${userLanguage}" />
        </c:url>
        
        <p>First Name : <c:out value="${param.firstname}"/></p>
        <p>Surname : <c:out value="${param.surname}"/></p>
        <p>Gender : <c:out value="${param.gender}" /></p>
        <p>Type of User : <c:out value="${param.user}"/></p>
        <p>Prefer Language : <c:out value="${param.language}"/></p>
    </body>
</html>
