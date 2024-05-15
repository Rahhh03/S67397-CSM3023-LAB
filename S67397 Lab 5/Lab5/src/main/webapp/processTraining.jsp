<%-- 
    Document   : processTraining
    Created on : 13 May 2024, 21:07:58
    Author     : Nur Atirah S67397
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Task 2</title>
    <style>
        p{
            color: blue;
        }
    </style>
</head>
    <body>
        <%
            String icNo = request.getParameter("icno"); 
            String Name = request.getParameter("name"); 

            String train_type = request.getParameter("training_type");
            String trainingType = "";
            double price = 0.0;
            if (train_type != null && !train_type.isEmpty()) {
                switch (train_type){
                    case "1":
                        trainingType = "C++";
                        price = 3000;
                        break;
                    case "2":
                        trainingType = "Java";
                        price = 3000;
                        break;
                    case "3":
                        trainingType = "HTML5";
                        price = 2800;
                        break;
                    case "4":
                        trainingType = "Java EEE";
                        price = 5500;
                        break;
                    case "5":
                        trainingType = "Android Programming";
                        price = 3200;
                        break;
                }
            }

            int paxNum = Integer.parseInt(request.getParameter("pax")); 

            String student = request.getParameter("student");
            String is_student = "";
            double discount = 0.0;
            if (student != null && !student.isEmpty()) {
                switch (student){
                    case "1":
                        is_student = "Yes";
                        discount = 0.10;
                        break;
                    case "0":
                        is_student = "No";
                        discount = 0.0;
                        break;
                }
            }

            double amount;
            double discount_price = price * discount;
            amount = (price - discount_price) * paxNum;
        %>
        <h1>Training Registration Acknowledgement</h1>
        <p>IC No : <%=icNo %></p>
        <p>Name : <%=Name %></p>
        <p>Type of Training : <%=trainingType %> </p>
        <p>Number of Pax : <%=paxNum %> person/s </p>
        <p>Student : <%=is_student %></p>
        <p>Amount Due : RM<%=amount %></p>
    </body>
</html>
