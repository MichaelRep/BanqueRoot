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
import java.sql.PreparedStatement;
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

    public static List<Client> getAllClientNonValide() throws SQLException {
        List<Client> cli = new ArrayList<>();

        String sql = "SELECT * FROM utilisateur ,client where id=id_utilisateur and valide=false";
        Connection connexion = AccessBD.getConnection();

        Statement requete = connexion.createStatement();

        ResultSet rs = requete.executeQuery(sql);

        while (rs.next()) {
            Client cl = new Client();
            cl.setId(rs.getInt("id"));
            cl.setNom(rs.getString("nom"));
            cl.setPrenom(rs.getString("prenom"));
            cl.setLogin(rs.getString("login_mail"));
            cl.setValide(rs.getBoolean("valide"));
            cl.setValide(true);
            cli.add(cl);
        }

        return cli;
    }


    public static List<Client> getAllClientValide() throws SQLException {
        List<Client> cli = new ArrayList<>();

        String sql = "SELECT * FROM utilisateur ,client where id=id_utilisateur and valide=true";
        Connection connexion = AccessBD.getConnection();

        Statement requete = connexion.createStatement();

        ResultSet rs = requete.executeQuery(sql);

        while (rs.next()) {
            Client cl = new Client();
            cl.setId(rs.getInt("id"));
            cl.setNom(rs.getString("nom"));
            cl.setPrenom(rs.getString("prenom"));
            cl.setLogin(rs.getString("login_mail"));
            cl.setValide(rs.getBoolean("valide"));
            cl.setValide(true);
            cli.add(cl);
        }

        return cli;
    }

    public static void validationClient(int id) throws SQLException {

        String sql = "Update client SET valide=true where id_utilisateur=? ";
        Connection connexion = AccessBD.getConnection();

        PreparedStatement requette = connexion.prepareStatement(sql);

        requette.setInt(1, id);

        requette.execute();

    }

}
