/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.dao;

import fr.solutec.model.Cartebleue;
import fr.solutec.model.Compte;
import fr.solutec.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author esic
 */
public class CarteDao {
    public static  Cartebleue getCarte (Compte u)
    throws SQLException{
        Cartebleue c =null;
        
        String sql = "SELECT * FROM carte WHERE id_compte=?";
        
        
        Connection connexion =AccessBD.getConnection();
        
        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setInt (1,u.getNum_compte());
        
        ResultSet rs =requette.executeQuery();
        
        if (rs.next()){
            c= new Cartebleue();
            Compte y = new Compte();
            y.setNum_compte(rs.getInt("id_compte"));
            c.setCompte(y);
            c.setNum_carte(rs.getInt("num_carte"));
            c.setStatut(rs.getBoolean("statut"));

        }
                
                
        
        return c;
        
    }
    
}
