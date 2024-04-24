<%-- 
    Document   : memberProcessing
    Created on : 17 Apr 2024, 15:39:27
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 - Task 6</title>
    <body>
        <h1>Passing data from main JSP's page to other JSP's page</h1>
        <fieldset>
            <%
                //define variable
                String myIC = null;
                String myName = null;
                
                //use request.getParameter() method to retrieve data from main's from
                myIC= request.getParameter("my_icno");
                myName = request.getParameter("my_name");
            %>
            <!-- Display the output -->
            <p>Thank you for rejecting in this event..!</p>
            <p>This is your details;</p>
            <p>IC No : <%=myIC%></p>
            <p>Name : <%=myName%></p>
        </fieldset>
    </body>
</html>
