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

/**
 *
 * @author esic
 */
public class ClientDao {

    public static Client getClient(User u)
            throws SQLException {
        Client c = null;

        String sql = "SELECT * FROM compte WHERE id_utilisateur=?";

        Connection connexion = AccessBD.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);
        requette.setInt(1, u.getId());

        ResultSet rs = requette.executeQuery();

        if (rs.next()) {
            c = new Client();
            c.setId(rs.getInt("id_utilisateur"));
            c.setPhoto(rs.getInt("photo"));
            c.setValide(rs.getBoolean("decouvert_aut"));

        }

        return c;

    }

}
