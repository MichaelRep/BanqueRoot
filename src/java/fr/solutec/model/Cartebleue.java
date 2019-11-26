


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
public class Cartebleue {
    private int num_carte;
    private boolean statut;
    private Compte compte;

    public Cartebleue() {
    }

    public Cartebleue(int num_carte, boolean statut, Compte compte) {
        this.num_carte = num_carte;
        this.statut = statut;
        this.compte = compte;
    }

    public int getNum_carte() {
        return num_carte;
    }

    public void setNum_carte(int num_carte) {
        this.num_carte = num_carte;
    }

    public boolean isStatut() {
        return statut;
    }

    public void setStatut(boolean statut) {
        this.statut = statut;
    }

    public Compte getCompte() {
        return compte;
    }

    public void setCompte(Compte compte) {
        this.compte = compte;
    }
    
    

    
    
}
