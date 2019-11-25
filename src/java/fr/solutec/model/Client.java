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
public class Client extends User{
    private int photo;
    private boolean valide;

    public Client(int photo, boolean valide, int id, String nom, String prenom, String login, String mdp) {
        super(id, nom, prenom, login, mdp);
        this.photo = photo;
        this.valide = valide;
    }

    public Client(int photo, boolean valide, String nom, String prenom, String login, String mdp) {
        super(nom, prenom, login, mdp);
        this.photo = photo;
        this.valide = valide;
    }

    

    public int getPhoto() {
        return photo;
    }

    public void setPhoto(int photo) {
        this.photo = photo;
    }

    public boolean isValide() {
        return valide;
    }

    public void setValide(boolean valide) {
        this.valide = valide;
    }
    
}
