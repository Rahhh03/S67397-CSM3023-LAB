<%-- 
    Document   : Calculator
    Created on : 17 Apr 2024, 16:28:41
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h2>Basic calculator program in jsp</h2>
        
            <%
                String num1 = "0",num2 ="0";
                int result = 0 ;
                String op = "+";
                
                char opchar = op.charAt(0);
                if(request.getParameter("op") != null){
                op = request.getParameter("op");
                opchar = op.charAt(0);
                
                num1 = request.getParameter("operand1");
                num2 = request.getParameter("operand2");
                
                switch(opchar){
                case '0' : result = Integer.parseInt(num1) + Integer.parseInt(num2);
                break;
                case '1' : result = Integer.parseInt(num1) - Integer.parseInt(num2);
                break;
                case '2' : result = Integer.parseInt(num1) * Integer.parseInt(num2);
                break;
                case '3' : result = Integer.parseInt(num1) / Integer.parseInt(num2);
                break;
                case '4' : result = Integer.parseInt(num1) & Integer.parseInt(num2);
                break;
                }
                }
            
            %>
            <form method="get" name="f1">
            <input type="text" size="20" name="operand1" value=<%= num1 %>>
            
            <select name=op size1>
                <option value="0">+</option>
                <option value="1">-</option>
                <option value="2">*</option>
                <option value="3">/</option>
                <option value="4">%</option>
            </select>
            
            <input type="text" size="20" name="operand2" value=<%= num2 %>>
            <p><br><br><br><br></p>
            <input type="submit" value="Calculate"/>
            Result = <%= result + "" %>
            </form>
            
    </center>
    </body>
</html>