<%-- 
    Document   : ex.processUser
    Created on : 15 Jun 2024, 15:53:02
    Author     : Atirah s67397
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csm3023", "root", "admin");

        String sql = "INSERT INTO userprofile2 (username, password, firstname, lastname) VALUES (?, ?, ?, ?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, username);
        stmt.setString(2, password);
        stmt.setString(3, firstname);
        stmt.setString(4, lastname);

        int rowsInserted = stmt.executeUpdate();
        if (rowsInserted > 0) {
            out.println("A new user was inserted successfully!");
        }

        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
