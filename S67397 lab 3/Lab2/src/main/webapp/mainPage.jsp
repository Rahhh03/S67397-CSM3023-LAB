<%-- 
    Document   : mainPage
    Created on : 20 Apr 2024, 19:10:13
    Author     : NUR ATIRAH BT SHAMSUDDIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task6</title>
        
        <style>
            .text{
                color: red;
                text-align: justify;
                padding: 30px;
            }
            
            .box{
                margin-right: 30%;
            }
        </style>
    </head>
    <body>
        <%@include file="headerPage.jsp" %> 
        <p class="text box ">
            Java Server Page (JSP) is a technology for controlling the content
            or appearance of Web pages through the use of servlets, small programs
            that are specified in the Web page and run on the Web server to modify 
            the Web page before it is sent to the user who requested it.
        </p>
        
        <%@include file="footerPage.jsp" %>

    </body>
</html>
