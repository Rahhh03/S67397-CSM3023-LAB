<%-- 
    Document   : processCalculateCarLoan
    Created on : 20 Apr 2024, 17:54:13
    Author     : NUR ATIRAH BT SHAMSUDDIN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Car Loan</title>
</head>
<body>
    <h1>Perform Car Loan Calculation</h1>
    <form>
        <fieldset>
            <h1 style="color: blue">Detail of car loan:</h1>
            <p>Loan Request : <%= request.getParameter("amount") != null ? request.getParameter("amount") : "N/A" %></p>
            <p>Period of Payment : <%= request.getParameter("period") != null ? request.getParameter("period") + " years" : "N/A" %></p>
            <p>Total Loan (+ interest) : 
                <% 
                    int amount = 0;
                    int period = 0;
                    int totalInterest = 0;
                    
                    if(request.getParameter("amount") != null) {
                        amount = Integer.parseInt(request.getParameter("amount"));
                    }
                    
                    if(request.getParameter("period") != null) {
                        period = Integer.parseInt(request.getParameter("period"));
                    }
                    
                    if (period == 3) {
                        totalInterest = 8500;
                    } else if (period == 4) {
                        totalInterest = 10000;
                    } else if (period == 5) {
                        totalInterest = 12550;
                    } else if (period == 7) {
                        totalInterest = 15750;
                    }
                    
                    int totalLoan = amount + totalInterest;
                    
                    DecimalFormat df = new DecimalFormat("####.00");
                    out.print(df.format(totalLoan));
                %>
            </p>
        </fieldset>
    </form>
</body>
</html>
