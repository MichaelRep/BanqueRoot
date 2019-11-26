/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Client;
import fr.solutec.model.Conseiller;
import fr.solutec.servlet.ChangementActifServlet;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author esic
 */
public class ConseillerDAO {
    
    
    public static List<Client> getAllClientNonValide() throws SQLException{
        List<Client> cli = new ArrayList<>();
        
        String sql = "SELECT * FROM personne";
        Connection connexion = AccessBD.getConnection();
        
        Statement requete = connexion.createStatement();
        
        ResultSet rs = requete.executeQuery(sql);
        
        while (rs.next()) {
            Client cl =new Client();
            cl.setId(rs.getInt("idpersonne"));
            cl.setNom(rs.getString("nom"));
            cl.setPrenom(rs.getString("prenom"));
            cl.setLogin(rs.getString("login"));
            cl.setValide(rs.getBoolean("valide"));
            
            cli.add(cl);
        }
        
        return cli;
    }
    
    public static void changeEtatActif(int id, boolean actif) throws SQLException{
        String sql ="";
        
        if (actif) {
            sql = "UPDATE conseiller SET actif='false' WHERE id_utilisateur = " + id + ";";
            
        }
        else{
            sql = "UPDATE conseiller SET actif='true' WHERE id_utilisateur = " + id + ";";
            Logger.getLogger(sql);
        }
        Connection connexion = AccessBD.getConnection();
        Statement requete = connexion.createStatement();
        
        requete.executeUpdate(sql);
        
    }
}
