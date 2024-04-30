<%-- 
    Document   : processCurrency
    Created on : 26 Apr 2024, 00:58:05
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Task 2</title>
</head>
<body>
     <%!
            //Define constant..
            final double USD = 3.92;
            final double STG = 5.96;
            final double EURO = 4.47;

            //Define method to perform currency exchange....
            private double calculateRate(String currency, int amount) {
                double currencyChange = 0.00f;

                switch (currency) {
                    case "1" :
                        currencyChange = (double) (amount * USD);
                        break;
                    
                    case "2" :
                        currencyChange = (double) (amount * STG);
                        break;

                    case "3" :
                        currencyChange = (double) (amount * USD);
                        break;
                }

                return currencyChange; //return the result....
            }
        %>

        <%
            int amount = Integer.parseInt(request.getParameter("amount"));
            String currency = request.getParameter("currency");
            String convert = "";
            String result = String.format("%.2f", calculateRate(currency, amount));

            switch (currency) {
                case "1" :
                    convert = "USD";
                    break;
                
                case "2" :
                    convert = "Pound Sterling";
                    break;

                case "3" :
                    convert = "Euro";
                    break;
            }
        %>
        <h2>Converting Ringgit Malaysia.</h2>
        <h3>Ringgit Malaysia: RM <%=String.format("%.2f", (double) amount)%>.</h3>
        <h3><%=convert%> : RM <%=result%>.</h3>

    </body>
</html>