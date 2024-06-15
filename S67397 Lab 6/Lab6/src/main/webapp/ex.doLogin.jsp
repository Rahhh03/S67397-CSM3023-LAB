<%-- 
    Document   : ex.doLogin
    Created on : 15 Jun 2024, 15:54:47
    Author     : Atirah s67397
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    boolean isValidUser = false;
    String firstname = "";
    String lastname = "";

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csm3023", "root", "admin");

        String sql = "SELECT firstname, lastname FROM userprofile2 WHERE username = ? AND password = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, username);
        stmt.setString(2, password);

        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            isValidUser = true;
            firstname = rs.getString("firstname");
            lastname = rs.getString("lastname");
        }

        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    if (isValidUser) {
        request.setAttribute("username", username);
        request.setAttribute("firstname", firstname);
        request.setAttribute("lastname", lastname);
        RequestDispatcher dispatcher = request.getRequestDispatcher("ex.main.jsp");
        dispatcher.forward(request, response);
    } else {
        request.setAttribute("errorMessage", "Invalid username or password..!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("ex.login.jsp");
        dispatcher.forward(request, response);
    }
%>
