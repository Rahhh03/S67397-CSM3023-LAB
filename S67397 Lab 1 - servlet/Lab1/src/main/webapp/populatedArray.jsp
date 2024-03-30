<%-- 
    Document   : populatedArray
    Created on : 28 Mar 2024, 01:45:14
    Author     : NUR ATIRAH BINTI SHAMSUDDIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Populated Array</title>
        <style>
            #salesmans{
                font-family:Arial, Helvetica, sans-serif ;
                border-collapse: collapse;
                width: 100%;
            }
            #salesmans td, #salesmans th{
                border: 1px solid black;
                padding: 8px;
            } 
            #salesmans tr:nth-child(even){
                background-color: #f2f2f2;
            }
            #salesmans tr{
                padding-top: 12px; 
                padding-bottom: 12px;
                text-align: center;  
            }
            #salesmans th{
                background-color: #FFA753;
            }
            #salesmans td{
                background-color: #F8D8B9;
            }
        </style>
    </head>
    <body>
        <h1>Read Java array and populate it into HTML's table</h1>
        <table id="salesmans">
            <tr>
                <th>Salesman</th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mac</th>
            </tr>
            <tr>
                <td>Salesman 1</td>
                <td>2500</td>
                <td>2100</td>
                <td>2200</td>
            </tr>
            <tr>
                <td>Salesman 2</td>
                <td>2000</td>
                <td>1900</td>
                <td>2400</td>
            </tr>
            <tr>
                <td>Salesman 3</td>
                <td>1800</td>
                <td>2200</td>
                <td>2450</td>
            </tr>
        </table>
    </body>
</html>
