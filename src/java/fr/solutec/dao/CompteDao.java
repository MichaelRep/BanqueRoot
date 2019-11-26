/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Client;
import fr.solutec.model.Compte;
import fr.solutec.model.User;
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
public class CompteDao {
    
     public static  Compte getCompte (User u)
    throws SQLException{
        Compte c =null;
        
        String sql = "SELECT * FROM compte WHERE id_utilisateur=?";
        
        
        Connection connexion =AccessBD.getConnection();
        
        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setInt (1,u.getId());
        
        ResultSet rs =requette.executeQuery();
        
        if (rs.next()){
            c= new Compte();
            c.getClient().setId(rs.getInt("id_utilisateur"));
            c.setNum_compte(rs.getInt("num_compte"));
            c.setMontant(rs.getInt("montant"));
            c.setDecouvert_autorise(rs.getBoolean("decouvert_aut"));

        }
                
                
        
        return c;
        
    }
    
    
}
