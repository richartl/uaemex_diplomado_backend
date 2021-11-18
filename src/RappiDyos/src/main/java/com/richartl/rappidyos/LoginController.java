/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.richartl.rappidyos;

import com.richartl.rappidyos.resources.dao.Deliveries;
import com.richartl.rappidyos.resources.dao.UserDaoImplementation;
import com.richartl.rappidyos.resources.model.Delivery;
import com.richartl.rappidyos.resources.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author richartl
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

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
            out.println("<title>Servlet LoginController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession(false);
        UserDaoImplementation userImpl = new UserDaoImplementation();
        if(session.getAttribute("loggedUserId") == null) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        else {
            try {
                Deliveries ds = new Deliveries();
                List<Delivery> dss = (List<Delivery>)(List<?>) ds.getAll();
                int userId = (int) session.getAttribute("loggedUserId");
                User loggedUser = userImpl.getUser(userId);
                request.setAttribute("deliveries", dss);
                request.setAttribute("loggedUser", loggedUser);
                request.getRequestDispatcher("/WelcomePage.jsp").forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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
        UserDaoImplementation userImpl = new UserDaoImplementation();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Deliveries ds = new Deliveries();
        try {
            User loggedUser = userImpl.loginUser(email, password);
            if (loggedUser == null) {
                request.getRequestDispatcher("/LoginError.jsp").forward(request, response);
            }
            List<Delivery> dss = (List<Delivery>)(List<?>) ds.getAll();
            request.setAttribute("loggedUser", loggedUser);
            request.setAttribute("deliveries", dss);
            HttpSession session = request.getSession();
            session.setAttribute("loggedUserId", loggedUser.getId());
            session.setMaxInactiveInterval(60*2);
            request.getRequestDispatcher("/WelcomePage.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
