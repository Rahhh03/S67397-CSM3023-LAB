<%-- 
    Document   : ArrayList
    Created on : 20 Apr 2024, 18:49:39
    Author     : NUR ATIRAH BT SHAMSUDDIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Use Java ArrayList</title>
    </head>
    <body>
        <h1>Use JSP Page Directive</h1>
        <%
            //create ArrayList object...
            ArrayList<String> studentList = new ArrayList<String>();
            
            //store student name
            studentList.add(0,"Mohamad Azam");
            studentList.add(1,"Peter Chong");
            studentList.add(2,"Rahimah Mansor");
            studentList.add(3,"Sri Devi");
            studentList.add(4,"Ng Hue Ween");
            studentList.add(5,"S. Nagarajan");
            
            //display the number of records..
            out.println("<p>The number of records in ArrayList are "+
                    studentList.size()+"</p>");
            
             //populate a list of student
             for (int i=0; i<studentList.size(); i++)
             out.println("<p>Record "+(i+1)+" is "+studentList.get(i)+"</p>");
        %>
    </body>
    <br>
</html>
