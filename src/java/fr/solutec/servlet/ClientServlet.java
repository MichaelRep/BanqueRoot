/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.dao.CarteDao;
import fr.solutec.dao.UserDao;
import fr.solutec.dao.ClientDao;
import fr.solutec.dao.CompteDao;
import fr.solutec.model.Cartebleue;
import fr.solutec.model.Client;
import fr.solutec.model.Compte;
import fr.solutec.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "ClientServlet", urlPatterns = {"/homeClient"})
public class ClientServlet extends HttpServlet {

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
            out.println("<title>Servlet ClientServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ClientServlet at " + request.getContextPath() + "</h1>");
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
        Client c = new Client();
        try {
            c = ClientDao.getClient(u);
        } catch (SQLException e) {
            out.println("Exception après tentative d'affichage des clients: " + e.getMessage());
        }

        Compte m = new Compte();
        try {
            m = CompteDao.getCompte(u);
        } catch (SQLException e) {
            PrintWriter y=response.getWriter();
            y.println("Exception après tentative d'affichage des comptes : " + e.getMessage());
        }
        Cartebleue b = new Cartebleue();
        try {
            b = CarteDao.getCarte(m);
            request.setAttribute("personne", u);
            request.setAttribute("client", c);
            request.setAttribute("compte", m);
            request.setAttribute("carte", b);
             request.getRequestDispatcher("WEB-INF/client.jsp").forward(request, response);
        } catch (SQLException e) {
            out.println("Exception après tentative d'affichage des cartes : " + e.getMessage());
        }
/*
        if (u != null) {

            request.setAttribute("personne", u);
            request.setAttribute("client", c);
            request.setAttribute("compte", m);
            request.setAttribute("carte", b);
            request.getRequestDispatcher("WEB-INF/client.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "non non non");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }*/

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
