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
public class Compte {
    private int id_client;
    private int num_compte;
    private int montant;
    private boolean decouvert_autorise;

    public Compte() {
    }

    public Compte(int num_compte, int montant, boolean decouvert_autorise) {
        this.num_compte = num_compte;
        this.montant = montant;
        this.decouvert_autorise = decouvert_autorise;
    }

    public Compte(int id_client, int num_compte, int montant, boolean decouvert_autorise) {
        this.id_client = id_client;
        this.num_compte = num_compte;
        this.montant = montant;
        this.decouvert_autorise = decouvert_autorise;
    }

    public int getId_client() {
        return id_client;
    }

    public void setId_client(int id_client) {
        this.id_client = id_client;
    }

    public int getNum_compte() {
        return num_compte;
    }

    public void setNum_compte(int num_compte) {
        this.num_compte = num_compte;
    }

    public int getMontant() {
        return montant;
    }

    public void setMontant(int montant) {
        this.montant = montant;
    }

    public boolean isDecouvert_autorise() {
        return decouvert_autorise;
    }

    public void setDecouvert_autorise(boolean decouvert_autorise) {
        this.decouvert_autorise = decouvert_autorise;
    }
    
    
    
}
