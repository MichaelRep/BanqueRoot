/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

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
public class UserDao {
    
    public static  User getByLoginAndPass (String login, String mdp)
    throws SQLException{
        User u =null;
        
        String sql = "SELECT * FROM utilisateur WHERE mail=? AND mdp=?";
        
        
        Connection connexion =AccessBD.getConnection();
        
        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString (1,login);
        requette.setString (2,mdp);
        
        ResultSet rs =requette.executeQuery();
        
        if (rs.next()){
            u= new User();
            u.setId(rs.getInt("Idpersonne"));
            u.setNom(rs.getString("Nom"));
            u.setPrenom(rs.getString("Prenom"));
            u.setLogin(rs.getString("mail"));
        }
                
                
        
        return u;
        
    }
    
   
}
