<%-- 
    Document   : processCalculateRectangle
    Created on : 24 Apr 2024, 19:06:50
    Author     : NUR ATIRAH BT SHAMSUDDIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise 2</title>
    </head>
    <body>
        <h2>Rectangle Comparison</h2>
        
        <h4>First Rectangle Area: 
            <%
            int width1 = Integer.parseInt(request.getParameter("firstWidth"));
            int length1 = Integer.parseInt(request.getParameter("firstLength"));
            int area1 = 0;
            area1 = width1 * length1 ;
            out.print(area1 +"Cm");
            %>
        </h4>  
        <h4>Second Rectangle Area: 
            <%
            int width2 = Integer.parseInt(request.getParameter("secondWidth"));
            int length2 = Integer.parseInt(request.getParameter("secondLength"));
            int area2 = 0;
            area2 = width2 * length2 ;
            out.print(area2 +"Cm");
            %>
        </h4>
        
        <h4>Conclusion : 
            <%
                if(area1>area2){
                out.print("First rectangle has greater area than Second rectangle.");
                }
                if(area1<area2){
                out.print("First rectangle has smaller area than Second rectangle.");
                }
                if(area1==area2){
                out.print("First rectangle has same amout area with Second rectangle.");
                }
            %>
        </h4>
    </body>
</html>
