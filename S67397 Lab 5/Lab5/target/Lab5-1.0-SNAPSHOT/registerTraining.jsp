<%-- 
    Document   : registerTraining
    Created on : 13 May 2024, 20:27:21
    Author     : Nur Atirah S67397
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

        #name {
            width: 400px;
        }

        #pax {
            width: 200px;
        }

    </style>
</head>
<body>
<h1>Register IT Training</h1>
<form action="processTraining.jsp" method="post"> <!-- Changed action and method attributes -->
    <fieldset>
        <legend>Training Registration</legend>
        <label for="icno">IC No</label> <input type="text" id="icno" name="icno" placeholder="E.g. : 911210-05-1234"> <br><br>
        <label for="name">Name</label> <input type="text" id="name" name="name" placeholder="Enter your name"> <br><br>
        <label for="training_type">Type of Training</label>
        <select id="training_type" name="training_type">
            <option value="1">C++</option>
            <option value="2">Java</option>
            <option value="3">HTML5</option>
            <option value="4">Java EEE</option>
            <option value="5">Android Programming</option>
        </select> <br><br>
        <label for="pax">No of Pax</label> <input type="number" id="pax" name="pax" placeholder="No of pax"> <br><br>
        <label>Student</label>
        <input type="radio" id="yes" name="student" value="1"> <label for="yes">Yes</label>
        <input type="radio" id="no" name="student" value="0"> <label for="no">No</label>

        <br><br>
        <input type="submit" value="Submit"> <input type="reset" value="Cancel">
    </fieldset>
</form>
<p><b>&copy; 2024 - Nur Atirah</b></p>
</body>
</html>
