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
public class Admin extends User {

    public Admin() {
        super();
        
    }

    public Admin(int id, String nom, String prenom, String login, String mdp, String type) {
        super(id, nom, prenom, login, mdp,type);
    }

    public Admin(String nom, String prenom, String login, String mdp, String type) {
        super(nom, prenom, login, mdp,type);
    }
    
}
