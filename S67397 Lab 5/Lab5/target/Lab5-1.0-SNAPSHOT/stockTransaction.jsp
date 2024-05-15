<%-- 
    Document   : stockTransaction
    Created on : 15 May 2024, 15:55:32
    Author     : Nur Atirah s67397
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="com.mycompany.lab5.StockTransactionBean" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Stock Transaction</title>
    <style>
        table {
            width: 50%;
            margin: auto;
            border-collapse: collapse;
        }
        td {
            padding: 8px;
        }
        input[type="number"] {
            width: 100%;
            box-sizing: border-box;
            padding: 8px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Stock Transaction Calculator</h1>
    <form action="stockTransaction.jsp" method="post">
        <table>
            <tr>
                <td><label for="shares">Enter the number of shares:</label></td>
                <td><input type="number" id="shares" name="shares" required></td>
            </tr>
            <tr>
                <td><label for="price">Enter the price per share (RM):</label></td>
                <td><input type="number" step="0.01" id="price" name="price" required></td>
            </tr>
            <tr>
                <td><label for="commission">Enter the commission rate (%):</label></td>
                <td><input type="number" step="0.01" id="commission" name="commission" required></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;"><input type="submit" value="Calculate"></td>
            </tr>
        </table>
    </form>
    <c:if test="${not empty param.shares and not empty param.price and not empty param.commission}">
        <jsp:useBean id="stockBean" class="com.mycompany.lab5.StockTransactionBean" scope="request" />
        <jsp:setProperty name="stockBean" property="shares" value="${param.shares}" />
        <jsp:setProperty name="stockBean" property="pricePerShare" value="${param.price}" />
        <jsp:setProperty name="stockBean" property="commissionRate" value="${param.commission}" />
        <h2 style="text-align: center;">Transaction Summary:</h2>
        <table>
            <tr>
                <td>Amount paid for stock alone:</td>
                <td>RM <fmt:formatNumber value="${stockBean.calculateStockAmount()}" pattern="0.000"/></td>
            </tr>
            <tr>
                <td>Commission amount:</td>
                <td>RM <fmt:formatNumber value="${stockBean.calculateCommission()}" pattern="0.000"/></td>
            </tr>
            <tr>
                <td>Total amount paid:</td>
                <td>RM <fmt:formatNumber value="${stockBean.calculateTotalAmount()}" pattern="0.000"/></td>
            </tr>
        </table>
    </c:if>
</body>
</html>