/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.dao.ConseillerDAO;
import fr.solutec.dao.UserDao;
import fr.solutec.model.Client;
import fr.solutec.model.Conseiller;
import fr.solutec.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author esic
 */
@WebServlet(name = "conseillerServlet", urlPatterns = {"/conseillerServlet"})
public class conseillerServlet extends HttpServlet {

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
            out.println("<title>Servlet conseillerServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet conseillerServlet at " + request.getContextPath() + "</h1>");
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

        HttpSession session = request.getSession(true);
        User u = (User) session.getAttribute("userC");
        Conseiller co = new Conseiller();
        co.setId(u.getId());
        co.setNom(u.getNom());
        co.setPrenom(u.getPrenom());
        co.setLogin(u.getLogin());
        co.setId(u.getId());

        try {
            List<Client> clients = ConseillerDAO.getAllClientNonValide();

            request.setAttribute("clientsNnValide", clients);

        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println("Exxept afetr tantative de get ALL : " + e.getMessage());
        }
        request.setAttribute("conseiller", co);
        request.getRequestDispatcher("WEB-INF/conseiller.jsp").forward(request, response);

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
