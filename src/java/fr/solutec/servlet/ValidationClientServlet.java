/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.dao.ConseillerDAO;
import static fr.solutec.dao.ConseillerDAO.creationCarte;
import static fr.solutec.dao.ConseillerDAO.creationCompte;
import static fr.solutec.dao.ConseillerDAO.validationClient;
import fr.solutec.model.Client;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Math.random;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author esic
 */
@WebServlet(name = "ValidationClient", urlPatterns = {"/ValidationClient"})
public class ValidationClientServlet extends HttpServlet {

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
            out.println("<title>Servlet ValidationClientServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ValidationClientServlet at " + request.getContextPath() + "</h1>");
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
        String idd = request.getParameter("id");
        
        int idu = Integer.parseInt(request.getParameter("id"));
        Random rand = new Random();
        int numCompte = rand.nextInt(500000);
        int numCarte = rand.nextInt(8999)+1000;
        
        try {
            validationClient(idu);
            creationCompte(idu,numCompte);
            creationCarte(idu,numCarte);
            response.sendRedirect("conseillerServlet");
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println("Except after tentative validation du client : " + e.getMessage());
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
