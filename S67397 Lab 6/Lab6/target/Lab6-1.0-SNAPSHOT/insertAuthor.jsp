<%-- 
    Document   : insertAuthor
    Created on : 18 May 2024, 01:21:02
    Author     : Nur Atirah (S67397)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 2</title>
        <style>
            label {
            display: inline-block;
            width: 150px;
            margin-right: 10px;
        }
        </style>
    </head>
    <body>
        <h1>Lab 6 - Task 2 - Perform creating and retrieving records via JSP page</h1>
        <form action="processAuthor.jsp" method="post">
            <fieldset>
                <legend>Author Registration</legend>
                <label for="authno">Author No</label> <input type="text" id="authno" name="authno" placeholder="E.g.: UKXXXXX">
                <br><br>
                <label for="name">Name</label> <input type="text" id="name" name="name" placeholder="Enter your name">
                <br><br>
                <label for="address">Address</label> <input type="text" id="address" name="address" placeholder="Enter you address">
                <br><br>
                <label for="city">City</label> <input type="text" id="city" name="city" placeholder="Enter your city">
                <br><br>
                <label for="state">State</label> <input type="text" id="state" name="state" placeholder="Enter your state">
                <br><br>
                <label for="zip">Zip</label> <input type="number" id="zip" name="zip" placeholder="Enter your zip">
                <br><br>
                
                <input type="submit" value="Submit" > <input type="reset" value="Cancel">
            </fieldset>
        </form>
    </body>
</html>
