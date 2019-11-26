/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Conseiller;
import fr.solutec.model.User;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author esic
 */
public class ConseillerDao {

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
        String sql = "SELECT * FROM personne";
        Connection connexion = AccessBD.getConnection();
        
        Statement requete = connexion.createStatement();
        
        ResultSet rs = requete.executeQuery(sql);
        
        while (rs.next()) {
            Conseiller c =new Conseiller();
            c.setId(rs.getInt("idpersonne"));
            c.setNom(rs.getString("nom"));
            c.setPrenom(rs.getString("prenom"));
            c.setLogin(rs.getString("login"));
            
            conseillers.add(c);
        }
        
        return conseillers;
    }
}