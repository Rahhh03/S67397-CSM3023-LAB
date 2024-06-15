<%-- 
    Document   : SampleInsertionRecord
    Created on : 18 May 2024, 00:48:02
    Author     : Atirah s67397
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 1</title>
    </head>
    <body>
        <h1>Lab 6 - Task 1 - Sample Insertion records into MySQL through</h1>
        <%
            int result;
            
            //step 1 : load JDBC driver..
            Class.forName("com.mysql.jdbc.Driver");
            out.println("Step 1 : MYSQL driver loaded..!");
        %>
        <br>
        <% 
            //step 2 : establich the connection...
            String myURL = "jdbc:mysql://localhost/csm3023";
            Connection myConnection = DriverManager.getConnection(myURL,"root","admin");
            out.println("Step 2 : Database is connected..!");
        %>
        <br>
        <% 
            //step 3 : create a PreparedStatement object...
            out.println("Step 3 : Prepared Statement created..!");
            
            //prepared SQL Query as a string..
            String sInsertQry = "INSERT INTO FirstTable VALUE(?)";
            
             // Call method prepareStatement
             PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
        %>
        <br>
        <% 
            //asign each value to respective columns for Book's table..(C-Create)
            out.println("Step 4 : Perform insertion of record..!");
            String name = "Welcome to access MYSQL database with JSP...!";
            myPS.setString(1,name);
            
            result = myPS.executeUpdate();
            
            if(result>0){
            
        %>
        <br>
        <% 
                out.println("Step 5 : Close databse connection..!");
                
                out.println(" ");
                out.println("Database connection is closed..!");
                
                out.print("<p>" + "The record : (" +name
                        + ") is successfully created..!" + "</p>");
            }
            //step 5 : close database connection..!
            myConnection.close();
        %>
        <br>
    </body>
</html>
