<%-- 
    Document   : processInsuranceQuo
    Created on : 29 Apr 2024, 15:21:48
    Author     : User
--%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        p {
            color: purple;
        }
    </style>
</head>
<body>
<%
    String icno = request.getParameter("icno");
    String name = request.getParameter("name");
    String marketPriceStr = request.getParameter("price");
    String coverage = request.getParameter("type");
    String ncd = request.getParameter("discount");

    double marketPrice = 0.0;
    double amount = 0.0;
    double gst = 0.0;
    double finalAmount = 0.0;
    String coverageType = "";
    String noClaimDiscount = "";

    if (marketPriceStr != null && !marketPriceStr.isEmpty()) {
        marketPrice = Double.parseDouble(marketPriceStr);

        switch (coverage) {
            case "comprehensive":
                coverageType = "Comprehensive";
                switch (ncd) {
                    case "10":
                        noClaimDiscount = "10%";
                        amount = 0.041048 * marketPrice * (1-0.10);
                        break;
                    case "25":
                        noClaimDiscount = "25%";
                        amount = 0.039841 * marketPrice * (1-0.25);
                        break;
                    case "35":
                        noClaimDiscount = "35%";
                        amount = 0.036923 * marketPrice * (1-0.35);
                        break;
                    case "55":
                        noClaimDiscount = "55%";
                        amount = 0.030013 * marketPrice * (1-0.55);
                        break;
                }
                break;
            case "third party":
                coverageType = "Third Party";
                switch (ncd) {
                    case "10":
                        noClaimDiscount = "10%";
                        amount = 0.040131 * marketPrice * (1-0.10);
                        break;
                    case "25":
                        noClaimDiscount = "25%";
                        amount = 0.037182 * marketPrice * (1-0.25);
                        break;
                    case "35":
                        noClaimDiscount = "35%";
                        amount = 0.035134 * marketPrice * (1-0.35);
                        break;
                    case "55":
                        noClaimDiscount = "55%";
                        amount = 0.032108 * marketPrice * (1-0.55);
                        break;
                }
                break;
        }
        gst = 0.06 * amount;
        finalAmount = amount + gst;
    }
%>

<form>
    <fieldset>
        <legend><h2><b>Details of Insurance Quotation</b></h2></legend>

        <p>IC No: <%= icno %></p>
        <p>Customer Name: <%= name %></p>
        <p>Market Price: <%= marketPriceStr %></p>
        <p>Coverage Type: <%= coverageType %></p>
        <p>No Claim Discount (NCD): <%= noClaimDiscount %></p>
        <p>Insurance Amount: <%= String.format("%.2f", amount) %></p>
        <p>6% GST: <%= String.format("%.2f", gst) %></p>
        <p>Final Amount (with 6% GST): <%= String.format("%.2f", finalAmount) %></p>
    </fieldset>
</form>
</body>
</html>
