<%-- 
    Document   : processMarathon
    Created on : 5 Jun 2024, 16:50:01
    Author     : atirah s67397
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="lab6.com.Database" %>
<%@page import="lab6.com.Marathon" %>
<%@page import="lab6.com.MarathonDAO" %>
<jsp:useBean id="myMarathon" class="lab6.com.Marathon" scope="request" />
<jsp:setProperty name="myMarathon" property="icno" param="icno" />
<jsp:setProperty name="myMarathon" property="name" param="name" />
<jsp:setProperty name="myMarathon" property="category" param="category" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int result;
            
            //step 1 create db obj
            Database myDB = new Database();
            
            MarathonDAO object1 = new MarathonDAO();
            
            //step2 add records
            result = object1.addDetails(myMarathon);
            
            //step3  determine whether the transaction is success..
            if (result > 0){
                out.print("<p>Record with IC No " + myMarathon.getIcno() + " successfully created ..! </p>");
                out.print("<p>Ic No    : " + myMarathon.getIcno() + "</p>");
                out.print("<p>Name     : " + myMarathon.getName() + "</p>");
                out.print("<p>Category : " + myMarathon.getCategory() + "</p>");
            } else {
                out.print("<p>Failed to add record with IC No " + myMarathon.getIcno() + "</p>");
            }
            
            //step 4 close database connection..!
            myDB.closeConnection();
        %>
    </body>
</html>
