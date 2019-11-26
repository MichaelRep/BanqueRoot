/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

import java.sql.Date;

/**
 *
 * @author esic
 */
public class Histo_connexions {
    private Date date;
    private int id_utilisateur;

    public Histo_connexions() {
    }

    public Histo_connexions(Date date) {
        this.date = date;
    }

    public Histo_connexions(Date date, int id_utilisateur) {
        this.date = date;
        this.id_utilisateur = id_utilisateur;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getId_utilisateur() {
        return id_utilisateur;
    }

    public void setId_utilisateur(int id_utilisateur) {
        this.id_utilisateur = id_utilisateur;
    }
    
            
    
}
