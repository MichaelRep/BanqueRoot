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

     public Client(int photo, boolean actif, int id, String nom, String prenom, String login, String mdp, String type) {
        super(id, nom, prenom, login, mdp, type);
        this.photo = photo;
        this.valide = false;
    }

    public Client(int photo, boolean actif, String nom, String prenom, String login, String mdp, String type) {
        super(nom, prenom, login, mdp, type);
        this.photo = photo;
        this.valide = false;
    }
    
    
    public Client(String nom, String prenom, String login, String mdp,String type) {
        super(nom, prenom, login, mdp,type);
        this.valide = false;
    }
     public Client() {
        
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
