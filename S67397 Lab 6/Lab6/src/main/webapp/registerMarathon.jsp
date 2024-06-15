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
        <h1>Marathon</h1>
        <form action="processMarathon.jsp" method="post">
            <fieldset>
                <legend>Marathon Registration</legend><br>
                <label>IC No</label><input type="text" id="icno" name="icno" placeholder="E.g.: 921110-10-2514">
                <br><br>
                <label>Name</label><input type="text" id="name" name="name" placeholder="Enter your name">
                <br><br>
                <label for="category">Category</label>
                <select id="category" name="category">
                    <option value="5 KM">5 KM</option>
                    <option value="7 KM">7 KM</option> 
                    <option value="10 KM">10 KM</option>
                </select>
                <br><br>
                <input type="submit" value="Submit"> 
                <input type="reset" value="Cancel">
            </fieldset>
        </form>
    </body>
</html>
