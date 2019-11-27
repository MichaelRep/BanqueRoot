/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.dao.AdminDao;
import fr.solutec.dao.UserDao;
import fr.solutec.model.Conseiller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ESIC
 */
@WebServlet(name = "ModifConseillerServlet", urlPatterns = {"/ModifConseillerServlet"})
public class ModifConseillerServlet extends HttpServlet {

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
            out.println("<title>Servlet ModifConseillerServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ModifConseillerServlet at " + request.getContextPath() + "</h1>");
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
        int id = Integer.parseInt(request.getParameter("idCo"));
        String nom = request.getParameter("nomCo");
        String prenom = request.getParameter("prenomCo");
        String log = request.getParameter("loginCo");
        String mdp = request.getParameter("mdpCo");
        String mdp2 = request.getParameter("mdpCo2");
        
//        if(mdp!=mdp2){
//            request.setAttribute("msg", "Mots de passe différents");
//            request.get
//        }
//        else{
            Conseiller cons = new Conseiller(id,nom, prenom, log, mdp);
        try {
            //if (utilisateurDejaExistant(log))
            //{
            AdminDao.modifierConseiller(cons);
            //response.sendRedirect("login");
            //response.sendRedirect("/login");
            response.sendRedirect("homeAdmin");
            //}
            // else{

            //}
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println("Exception après tentative de modification conseiller : " + e.getMessage());
        }
        //}
        
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
