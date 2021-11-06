/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.richartl.ecuacioncuadratica.resources;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author richartl
 */
@WebServlet(name = "EcuacionController", urlPatterns = {"/EcuacionController"})
public class EcuacionController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    public CustomModel model;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                /* TODO output your page here. You may use following sample code. */
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet EcuacionController</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Servlet EcuacionController at " + request.getContextPath() + "</h1>");
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

            model = new CustomModel();
            model.openBuffer();

            float a = Integer.parseInt(request.getParameter("a"));
            float b = Integer.parseInt(request.getParameter("b"));
            float c = Integer.parseInt(request.getParameter("c"));
            double d= b * b - 4.0 * a * c;
            double r1 = 0;
            double r2 = 0;
            int status_code = 1; // 1 for success 0 for failure
            if (d> 0.0)
            {
                r1 = (-b + Math.pow(d, 0.5)) / (2.0 * a);
                r2 = (-b - Math.pow(d, 0.5)) / (2.0 * a);
            }
            else if (d == 0.0)
            {
                r1 = -b / (2.0 * a);
            }
            else
            {
                request.setAttribute("message", "Roots are not real");
                status_code = 0;
            }


            model.storeResult("message: " + "Roots are not real");
            request.setAttribute("r1", r1);
            model.storeResult("r1: " + r1);
            request.setAttribute("r2", r2);
            model.storeResult("r2: " + r2);
            model.closeBuffer();
            request.setAttribute("status", status_code);
            request.getRequestDispatcher("/ecuacionResponse.jsp").forward(request, response);
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
