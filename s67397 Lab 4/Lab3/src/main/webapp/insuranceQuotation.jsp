<%-- 
    Document   : insuranceQuotation
    Created on : 29 Apr 2024, 01:16:52
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 5</title>
        <style>
            label {
            display: inline-block;
            width: 150px;
            margin-right: 10px;
        }
        </style>
    </head>
    <body>
        <h1>Insurance Quotation</h1>
        <form action="processInsuranceQuo.jsp">
            <fieldset>
                <legend>Insurance Calculation</legend>
                <br>
                
                <label for="icno">ICNo<span  style="color:red"> *</span></label></label>
                <input type="number" id="icno" name="icno" placeholder="E.g. 821210-05-3478" required>
                <br><br>
                
                <label for="name">Name<span  style="color:red"> *</span></label></label>
                <input type="text" id="name" name="name" placeholder="Enter Name" required>
                <br><br>
                
                <label for="price">Market Price<span  style="color:red"> *</span></label></label>
                <input type="number" id="price" name="price" placeholder="Price" required>
                <br><br>
                
                <label for="type">Coverage Type</label>
                <select id="type" name="type">  
                    <option value="comprehensive">Comprehensive </option>  
                    <option value="third party">Third Party</option>
                </select>
                <br><br>
                
                <label for="discount">No claim discount (NCD)</label>
                <select id="discount" name="discount">
                    <option value="10">10%</option>
                    <option value="25">25%</option>
                    <option value="35">35%</option>
                    <option value="55">55%</option>
                </select>
                
        <br><br>
        <input type="submit" value="Submit" > 
        <input type="reset" value="Cancel">
            </fieldset>
        </form>
        
    </body>
</html>
