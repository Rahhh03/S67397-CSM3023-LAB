<%-- 
    Document   : calculateBMI
    Created on : 1 May 2024, 02:37:31
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 1</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        h2{
            color: purple;
        }
        label {
            display: inline-block;
            width: 150px;
            margin-right: 10px;
        }
    </style>
</head>
<body>  
    <h2>Calculating a person's body mass index (BMI).</h2>
    <p>Please do fill in all the box!</p>
    
    <form action="processBMI.jsp">
        
        <label for="height">Height :</label>
        <input type="text" id="height" name="height" placeholder="Key-in Height" required="">
        <label>(m)</label>
        <br><br>
        <label for="weight">Weight :</label>
        <input type="text" id="weight" name="weight" placeholder="Key-in Weight" required="">
        <label>(Kg)</label>
        <br><br><br>
        
        <input type="submit" value="Submit" > 
        <input type="reset" value="Cancel">
    </form> 
    </body>
</html>
