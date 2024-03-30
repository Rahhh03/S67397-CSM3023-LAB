
package com.mycompany.myfirstservlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.annotation.*;

/**
 *
 * NUR ATIRAH BINTI SHAMSUDDIN, S67397
 */
public class HelloServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Irah HelloServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Hello, Servlet</h1>");
            out.println("<h2>Servlet HelloServlet at " + request.getContextPath() + "</h2>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*Step1: set teh content type (tell the browser what is he type of
        the response data: e.g text/html, text/plain. inour case, we will
        response with html data.)*/
        response.setContentType("text/html");
        
                
        /*Step2: create the PrintWriter object. we name it as 'out'*/
        PrintWriter out=response.getWriter();
                
        /*Step3: read GET parameteer sent by the user through the web browser*/
        String name= request.getParameter("name");
                
        /*Addtional: if no value for parameter "name", call processRequest method*/        
        if(name==null)
            processRequest(request,response);
        
        /*Step4: Generate content for our HTML response. Print the name*/
        out.println("<html><body>");
        
        out.println("Hello, "+name+"!"+"<br>");
        out.println("Apa Khabar?"+"<hr>");
        out.println("Waktu dan Tarikh di Server ialah"+new java.util.Date());
        out.println("</html></body>");
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
