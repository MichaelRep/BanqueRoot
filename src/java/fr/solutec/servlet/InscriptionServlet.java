/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.dao.UserDao;
import static fr.solutec.dao.UserDao.utilisateurDejaExistant;
import fr.solutec.model.Client;
import fr.solutec.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author esic
 */
@WebServlet(name = "InscriptionServlet", urlPatterns = {"/InscriptionClient"})
public class InscriptionServlet extends HttpServlet {

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
            out.println("<title>Servlet InscriptionServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InscriptionServlet at " + request.getContextPath() + "</h1>");
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
        String nom=request.getParameter("nom");
        String prenom=request.getParameter("prenom");
        String log=request.getParameter("login");
        String mdp=request.getParameter("mdp");
        String typ="3";
        Client cl =new Client( nom, prenom, log, mdp,typ);
        
        try {
            
            if (utilisateurDejaExistant(log))
            {
                 
            UserDao.insertUser(cl);
            UserDao.insertClient(cl);
            response.sendRedirect("login");
            }
            else{
                
                request.setAttribute("msgInscription", "Utilisateur déjà existant");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                
            }
            
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println("Exxept afetr tentative d'inscription : " + e.getMessage());
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
