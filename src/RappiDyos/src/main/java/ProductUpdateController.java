/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.richartl.rappidyos.ProductsController;
import com.richartl.rappidyos.resources.dao.Deliveries;
import com.richartl.rappidyos.resources.dao.DeliveryMen;
import com.richartl.rappidyos.resources.dao.Products;
import com.richartl.rappidyos.resources.dao.Transports;
import com.richartl.rappidyos.resources.model.Delivery;
import com.richartl.rappidyos.resources.model.DeliveryMan;
import com.richartl.rappidyos.resources.model.Product;
import com.richartl.rappidyos.resources.model.Transport;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author richartl
 */
@WebServlet(urlPatterns = {"/ProductUpdateController"})
public class ProductUpdateController extends HttpServlet {

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
            out.println("<title>Servlet ProductUpdateController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductUpdateController at " + request.getContextPath() + "</h1>");
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
        Products ps = new Products();
        try {
            List<Product> pss = (List<Product>)(List<?>) ps.getAll();
            request.setAttribute("products", pss);
            request.getRequestDispatcher("/ProductsUpdate.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProductsController.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            Products pss = new Products();
            int productId = Integer.parseInt(request.getParameter("product_id"));
            String vin = request.getParameter("vin");
            String name = request.getParameter("name");
            Product oldPr = (Product) pss.getById(productId);
            Product pr = new Product(name, vin);
            pr.setId(oldPr.getId());
            pss.update(pr);
            request.getRequestDispatcher("/CreateSuccess.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProductsController.class.getName()).log(Level.SEVERE, null, ex);
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
