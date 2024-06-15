<%-- 
    Document   : insertStudent
    Created on : 18 May 2024, 19:21:41
    Author     : nur atirah s67397
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 3</title>
        <style>
            label {
                display: inline-block;
                width: 150px;
                margin-right: 10px;
            }
        </style>
    </head>
    <body> 
        <h1>Inserting Student Information!</h1>
        <form action="processStudent.jsp" method="post">
            <fieldset>
                <legend>Student Registration</legend>
                <label>Student No</label><input type="text" id="stuno" name="stuno" placeholder="E.g.: UKXXXXX" required>
                <br><br>
                <label>Name</label><input type="text" id="name" name="name" placeholder="Enter your name" required>
                <br><br>
                <label for="program">Program</label>
                <select id="program" name="program" required>
                    <option value="BSc. Soft. Eng.">BSc. Soft. Eng.</option>
                    <option value="BSc. with IM">BSc. with IM</option>
                    <option value="BSc. in Networking">BSc. in Networking</option>
                    <option value="BSc. in Robotics">BSc. in Robotics</option>
                </select>
                <br><br>
                <input type="submit" value="Submit"> <input type="reset" value="Cancel">
            </fieldset>
        </form>
    </body>
</html>
