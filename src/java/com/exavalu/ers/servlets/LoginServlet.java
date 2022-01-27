package com.exavalu.ers.servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.exavalu.ers.pojos.User;
import com.exavalu.ers.services.UserService;
import com.opensymphony.xwork2.ActionSupport;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author indra
 */
public class LoginServlet extends HttpServlet  {

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
        try {
                String userEmail= request.getParameter("userEmail");
                String password=  request.getParameter("password");
            
            // call a java service in my server or external server.
                User myUser = new User();
                myUser.setUserEmail(userEmail);
                myUser.setPassword(password);
            
                User validUser = UserService.validateLoginCredentials(myUser);
            
                if(validUser.isValidUser())
                {
                    request.setAttribute("validUser", validUser);
                    //go to dashboard, which is either html or jsp
                    if(validUser.getRoleId()==1)
                    {
                    request.getRequestDispatcher("adminIndex.jsp").forward(request, response);
                    }
                    else
                    {
                        request.getRequestDispatcher("newjsp.jsp").forward(request, response);
                    }
                }
            
                else
                {
                    //go to loin page
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
        } 
        catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
