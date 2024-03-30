<%-- 
    Document   : Customer
    Created on : 30 Mar 2024, 19:55:55
    Author     : NUR ATIRAH BINTI SHAMSUDDIN
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sales Data</title>
</head>
<body>
    <h1>Sales Data</h1>
    <table border="1">
        <tr>
            <th>Customer</th>
            <th>Cust. Type</th>
            <th>Purchase</th>
            <th>Discount</th>
        </tr>
        <% 
            try {
                // Define the file path
                String filePath = "C:/Users/User/Desktop/csm3023 lab/S67397 Lab 1 - Servlet/Sales.csv";
                
                // Open the Sales.csv file
                BufferedReader br = new BufferedReader(new FileReader(filePath));
                String line;
                
                // Skip the header line
                br.readLine();
                
                // Read data line by line and display it in the table
                while ((line = br.readLine()) != null) {
                    String[] data = line.split(";");
                    
                    // Ensure data array has 3 elements
                    if (data.length == 3) {
                        String customer = data[0];
                        String custType = data[1];
                        double purchase = Double.parseDouble(data[2]);
                        double discount = 0.0;
                        
                        // Calculate discount for cash customers
                        if (custType.trim().equalsIgnoreCase("Cash")) {
                            discount = purchase * 0.1; // 10% discount for cash customers
                        }
                        
                        // Display the data in the table
                        out.println("<tr>");
                        out.println("<td>" + customer + "</td>");
                        out.println("<td>" + custType + "</td>");
                        out.println("<td>" + purchase + "</td>");
                        out.println("<td>" + discount + "</td>");
                        out.println("</tr>");
                    } else {
                        // Handle case where data is not in the expected format
                        out.println("<tr><td colspan='4'>Invalid data format: " + line + "</td></tr>");
                    }
                }
                br.close();
            } catch (IOException e) {
                out.println("<tr><td colspan='4'>Error reading file: " + e.getMessage() + "</td></tr>");
            }
        %>
    </table>
</body>
</html>
