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
    private int id_compte;
    private int num_carte;
    private boolean statut;

    public Cartebleue() {
    }

    public Cartebleue(int id_compte, int num_carte, boolean statut) {
        this.id_compte = id_compte;
        this.num_carte = num_carte;
        this.statut = statut;
    }

    public int getId_compte() {
        return id_compte;
    }

    public void setId_compte(int id_compte) {
        this.id_compte = id_compte;
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
    
    
    
}
