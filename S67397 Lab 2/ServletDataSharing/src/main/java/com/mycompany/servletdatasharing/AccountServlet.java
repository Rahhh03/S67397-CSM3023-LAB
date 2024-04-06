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

/*
 *
 * NUR ATIRAH BINTI SHAMSUDDIN , S67397
 */
public class AccountServlet extends HttpServlet {
    
    // HashMap to store account information for users
    HashMap<String, String[]> account = new HashMap<>();
    
    @Override
    public void init() throws ServletException {
        super.init();
        // Initializing sample account information for users
        account.put("Ali", new String[]{"31/01/2019: 2000.00", "28/02/2019: 3000.00"});
        account.put("Ahmad", new String[]{"31/01/2019: 100.00", "28/02/2019: 5000.00"});
        account.put("Muthu", new String[]{"31/01/2019: 1000", "28/02/2019: 2000"});
    }
    
    // Method to handle HTTP GET and POST requests
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        // Retrieving user ID from request attribute
        String userid_login = (String) request.getAttribute("userid");
        
        try (PrintWriter out = response.getWriter()) {
            // Writing HTML response
            out.println("<!DOCTYPE html>");            
            out.println("<html>");            
            out.println("<head>");            
            out.println("<title>Servlet AccountServlet</title>");            
            out.println("</head>");            
            out.println("<body>"); // Opening body tag
            
            // Checking if user account information exists
            if (account.get(userid_login) == null) {
                out.println("<h1>Sorry, no information found!</h1>");
            } else {
                // Displaying user account status
                out.println("<h1>Account status for:" + userid_login + "</h1>");
                for (String tempAcc: account.get(userid_login)) {
                    out.println("<h2>" + tempAcc + "</h2>");
                }
            }
            out.println("</body>"); // Closing body tag
            out.println("</html>"); // Closing html tag
             
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