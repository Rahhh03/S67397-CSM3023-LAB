package com.mycompany.servletdatasharing;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse; 
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;

/*
 *
 * NUR ATIRAH BINTI SHAMSUDDIN , S67397
 */
public class LoginServlet extends HttpServlet {
    
    // HashMap to store username-password pairs
    HashMap<String, String> users = new HashMap<>();
    
    @Override
    public void init() throws ServletException{
        super.init();
        // Initializing sample users and passwords
        users.put("Ali", "1234");
        users.put("Ahmad", "4567");
        users.put("Muthu", "8910");
    }
    
    // Method to handle HTTP GET and POST requests
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Retrieving username and password from request parameters
        String username = request.getParameter("txtUsername");
        String password = request.getParameter("txtPassword");
        
        // Retrieving stored password for the given username
        String storedPassword = users.get(username);
        
        // Validating username and password
        if (storedPassword != null && !username.equals("") && !password.equals("") 
                        && storedPassword.equals(password)) { 
            // Setting user ID as an attribute
            request.setAttribute("userid", username);
            // Getting the servlet context
            ServletContext sc= getServletContext();
            // Getting request dispatcher for AccountServlet
            RequestDispatcher rd = sc.getRequestDispatcher("/AccountServlet");
            // Forwarding request and response to AccountServlet
            rd.forward(request, response);
        } else { 
            // If login credentials are invalid, forwarding to login.html
            RequestDispatcher rd=request.getRequestDispatcher("/login.html");
            rd.forward(request, response);
        }
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /*
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
        processRequest(request, response);
    }

    /*
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
        processRequest(request, response);
    }

    /*
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}