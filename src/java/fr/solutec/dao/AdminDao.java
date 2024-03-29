/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Conseiller;
import fr.solutec.model.User;
import java.io.Console;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/**
 *
 * @author esic
 */
public class AdminDao {

    public static void insertConseiller(Conseiller conseiller)
            throws SQLException {

        String sql = "INSERT INTO conseiller (id_utilisateur,photo, actif) VALUES ((SELECT distinct id FROM utilisateur WHERE login_mail=?),NULL,false);";
        Connection connexion = AccessBD.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);

        requette.setString(1, conseiller.getLogin());

        requette.execute();

    }
    
    public static List<Conseiller> getAllConseillers() throws SQLException{
        List<Conseiller> conseillers = new ArrayList<>();
        String sql = "SELECT u.id,u.nom,u.prenom,u.login_mail, c.actif FROM utilisateur u, conseiller c WHERE u.id=c.id_utilisateur";
        Connection connexion = AccessBD.getConnection();
        
        Statement requete = connexion.createStatement();
        
        ResultSet rs = requete.executeQuery(sql);
        
        while (rs.next()) {
            Conseiller c =new Conseiller();
            c.setId(rs.getInt("id"));
            c.setNom(rs.getString("nom"));
            c.setPrenom(rs.getString("prenom"));
            c.setLogin(rs.getString("login_mail"));
            c.setActif(rs.getBoolean("actif"));
            conseillers.add(c);
        }
        
        return conseillers;
    }
    
    public static void changeEtatActif(int id, boolean actif) throws SQLException{
        String sql ="";
        System.out.println("TESTTTTTTTTTTT");
        if (actif) {
            sql = "UPDATE conseiller SET actif=0 WHERE id_utilisateur = " + id + ";";
            System.out.println(sql);
         }
        else{
            sql = "UPDATE conseiller SET actif=1 WHERE id_utilisateur = " + id + ";";
            System.out.println(sql);
        }
        Connection connexion = AccessBD.getConnection();
        Statement requete = connexion.createStatement();
        
        requete.executeUpdate(sql);
        
    }
    
    public static void suppressionConseiller(int id) throws SQLException{
        String sql ="DELETE FROM conseiller where id_utilisateur = " + id;
        Connection connexion = AccessBD.getConnection();
        Statement requete = connexion.createStatement();
        requete.execute(sql);
        sql ="DELETE FROM utilisateur where id = " + id;
        requete.execute(sql);
    }
    
    public static void modifierConseiller(Conseiller cons) throws SQLException{
        String sql ="UPDATE utilisateur SET nom = '" + cons.getNom() + "', prenom = '" + cons.getPrenom()+ "', login_mail = '" + cons.getLogin()+ "', mdp = '" + cons.getMdp() +"' where id = " + cons.getId() +";";
        Connection connexion = AccessBD.getConnection();
        Statement requete = connexion.createStatement();
        
        requete.executeUpdate(sql);
        
        
    }
}
