<%-- 
    Document   : processCustomer
    Created on : 24 Apr 2024, 21:21:56
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Task 1</title>
</head>
<body>
    <%
        final int price = 10;

        //using jsp scriplet
        String cust_no1 = request.getParameter("cust_no");
        int quantity1 = Integer.parseInt(request.getParameter("quantity"));
        String cust_type1 = request.getParameter("cust_type");

        //determine customer..
        if ("1".equals(cust_type1) && quantity1 > 100){
            out.print("You're entitled " + "10%");
            %><br><%
            out.print("Total amount is RM" + quantity1 * price * 0.9);
        } else if ("2".equals(cust_type1) && quantity1 > 100){
            out.print("You're entitled " + "25%");%><br><%
            out.print("Total amount is RM" + quantity1 * price * 0.75);
        } else {
            out.print("You're not entitled to a discount..!!");%><br><%
            out.print("Total amount is RM" + quantity1 * price);
        }
    %>
</body>
</html>
