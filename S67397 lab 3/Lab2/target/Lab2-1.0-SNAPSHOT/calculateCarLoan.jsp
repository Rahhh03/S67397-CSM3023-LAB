<%-- 
    Document   : calculateCarLoan
    Created on : 20 Apr 2024, 12:18:00
    Author     : NUR ATIRAH BINTI SHAMSUDDIN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Car Loan</title>
</head>
<body>
    <h1>Perform Car Loan Calculation</h1>
    
    <form action="processCalculateCarLoan.jsp" method="post"> 
        <fieldset>
            <br>
            <legend>Loan Calculation</legend>
            <label for="amount">Loan Amount*</label>
            <input type="number" id="amount" name="amount"><br><br>
            <label for="period">Period</label>
            <select id="period" name="period"> 
                <option value="3">3 years</option>//8500
                <option value="4">4 years</option>//10000
                <option value="5">5 years</option>//12550
                <option value="7">7 years</option>//15750
            </select>
            <br><br><br>
            <input type="submit" value="Submit"> 
            <input type="reset" value="Cancel">
        </fieldset>
    </form>
</body>
</html>
 