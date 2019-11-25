/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.model;

/**
 *
 * @author esic
 */
public class Conseiller extends User {
    private int photo;
    private boolean actif;

    public Conseiller(int photo, boolean actif, int id, String nom, String prenom, String login, String mdp) {
        super(id, nom, prenom, login, mdp);
        this.photo = photo;
        this.actif = actif;
    }

    public Conseiller(int photo, boolean actif, String nom, String prenom, String login, String mdp) {
        super(nom, prenom, login, mdp);
        this.photo = photo;
        this.actif = actif;
    }
    

    public int getPhoto() {
        return photo;
    }

    public void setPhoto(int photo) {
        this.photo = photo;
    }

    public boolean isActif() {
        return actif;
    }

    public void setActif(boolean actif) {
        this.actif = actif;
    }
    
    
    
}
