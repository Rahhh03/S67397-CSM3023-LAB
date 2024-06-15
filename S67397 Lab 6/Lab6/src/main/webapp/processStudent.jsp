<%-- 
    Document   : processBook
    Created on : 19 May 2024, 00:05:00
    Author     : nur atirah s67397
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page errorPage="errorStudent.jsp" %>
<jsp:useBean id="myStudent" class="lab6.com.Student" scope="request" />
<jsp:setProperty name="myStudent" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 3</title>
    </head>
    <body>
        <%
            String studentNo = myStudent.getStuno();
            if ("invalid".equals(studentNo)) {
                out.println("<p>Invalid student number format. Please try again.</p>");
            } else {
                try {
                    // Step 1: Load JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    System.out.println("Step 1 : MYSQL driver loaded..!");
                    
                    // Step 2: Establish the connection
                    String myURL = "jdbc:mysql://localhost/csm3023";
                    Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
                    System.out.println("Step 2 : Database is connected.!");
                    
                    // Step 3: Create a PreparedStatement object
                    String sInsertQry = "INSERT INTO Student (stuno, stuname, stuprogram) VALUES (?, ?, ?)";
                    PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
                    
                    // Step 4: Set the parameters
                    myPS.setString(1, myStudent.getStuno());
                    myPS.setString(2, myStudent.getName());
                    myPS.setString(3, myStudent.getProgram());
                    
                    // Step 5: Execute the query
                    int result = myPS.executeUpdate();
                    if (result > 0) {
                        out.println("<p>Record with student no " + myStudent.getStuno() + " successfully created..!</p>");
                        out.println("<p>Details of record are:</p>");
                        out.println("<p>Student ID: " + myStudent.getStuno() + "</p>");
                        out.println("<p>Name: " + myStudent.getName() + "</p>");
                        out.println("<p>Program: " + myStudent.getProgram() + "</p>");
                    }
                    
                    // Step 6: Close the connection
                    myConnection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<p>Error: " + e.getMessage() + "</p>");
                }
            }
        %>
    </body>
</html>
