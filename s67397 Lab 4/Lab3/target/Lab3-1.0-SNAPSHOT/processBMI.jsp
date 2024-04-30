<%-- 
    Document   : processBMI
    Created on : 1 May 2024, 02:52:08
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1>Hello!</h1>
    <h3>This is your BMI:</h3>
    <%
        String height = request.getParameter("height");
        String weight = request.getParameter("weight");

        // Check if height and weight parameters are not empty and can be parsed to double
        if (height != null && !height.isEmpty() && weight != null && !weight.isEmpty()) {
            double h = Double.parseDouble(height);
            double w = Double.parseDouble(weight);
            
            double bmi = w / (h * h);
            
            if (bmi < 18.5) {
                out.print("Oh no! You're considered to be underweight");
            } else if (bmi >= 18.5 && bmi <= 25) {
                out.print("Yeah!! Your weight is considered to be optimal");
            } else {
                out.print("Oh no! You're considered to be overweight");
            }
        } else {
            out.print("Invalid input. Please enter valid numbers for height and weight.");
        }
    %>
</body>
</html>
