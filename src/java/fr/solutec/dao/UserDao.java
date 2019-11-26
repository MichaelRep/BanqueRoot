/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Client;
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
public class UserDao {
    
    public static  User getByLoginAndPass (String login, String mdp)
    throws SQLException{
        User u =null;
        
        String sql = "SELECT * FROM utilisateur WHERE login_mail=? AND mdp=?";
        
        
        Connection connexion =AccessBD.getConnection();
        
        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setString (1,login);
        requette.setString (2,mdp);
        
        ResultSet rs =requette.executeQuery();
        
        if (rs.next()){
            u= new User();
            u.setId(rs.getInt("id"));
            u.setNom(rs.getString("Nom"));
            u.setPrenom(rs.getString("Prenom"));
            u.setLogin(rs.getString("login_mail"));
            u.setType(rs.getString("type"));

        }
                
                
        
        return u;
        
    }
    
    public static void  insertUser (User user)
    throws SQLException{
        
        String sql = "INSERT INTO utilisateur (nom, prenom, login_mail, mdp,type) VALUES (?,?,?,?,?);";
        
        Connection connexion =AccessBD.getConnection();
        
        PreparedStatement requette = connexion.prepareStatement(sql);
        
        requette.setString (1,user.getNom());
        requette.setString (2,user.getPrenom());
        requette.setString (3,user.getLogin());
        requette.setString (4,user.getMdp());
        requette.setString (5,user.getType());
               
        requette.execute();       
        
    }
    
   public static void  insertClient (Client client)
    throws SQLException{ 
        
        String sql = "INSERT INTO client (id_utilisateur,photo, valide) VALUES ((SELECT distinct id FROM utilisateur WHERE login_mail=?),NULL,false);";
        
        Connection connexion =AccessBD.getConnection();
        
        PreparedStatement requette = connexion.prepareStatement(sql);
        
                requette.setString (1,client.getLogin());
        
               
        requette.execute();     
        
    }
   
   
   
   public static boolean  utilisateurDejaExistant (String log)
    throws SQLException{ 
        
        String sql = "SELECT COUNT(*) as nb from utilisateur WHERE login_mail=?";
        
        Connection connexion =AccessBD.getConnection();
        
        PreparedStatement requette = connexion.prepareStatement(sql);
        
        requette.setString (1,log);
         
        ResultSet rs =requette.executeQuery();     
        
        if (rs.next()){
            if (rs.getInt("nb")==0){
                return true;
            }
            else{
                return false;
            }
            
        }
        
        return true;
    }
}
