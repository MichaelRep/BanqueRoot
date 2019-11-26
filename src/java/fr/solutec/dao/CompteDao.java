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
    
     public static  Compte getCompte (String id)
    throws SQLException{
        Compte u =null;
        
        String sql = "SELECT * FROM compte WHERE id_utilisateur=?";
        
        
        Connection connexion =AccessBD.getConnection();
        
        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString (1,id);
        
        ResultSet rs =requette.executeQuery();
        
        if (rs.next()){
            u= new Compte();
            u.setId_client(rs.getInt("id_utilisateur"));
            u.setNum_compte(rs.getInt("num_compte"));
            u.setMontant(rs.getString("Nom"));
            u.setDecouvert_autorise(rs.is("Prenom"));

        }
                
                
        
        return u;
        
    }
    
    
}
