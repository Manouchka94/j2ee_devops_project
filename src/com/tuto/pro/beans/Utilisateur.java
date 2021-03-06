package com.tuto.pro.beans;

import java.sql.Timestamp;

public class Utilisateur {

    private Long id;
    private String prenom;
    private String nom;
    private String email;
    private String motDePasse;
    private Timestamp dateInscription;
    
    
    public Long getId() {
        return id;
    }
    public void setId( Long id ) {
        this.id = id;
    }
    public Timestamp getDateInscription() {
        return dateInscription;
    }
    public void setDateInscription( Timestamp dateInscription ) {
        this.dateInscription = dateInscription;
    }
    public String getPrenom() {
        return prenom;
    }
    public void setPrenom( String prenom ) {
        this.prenom = prenom;
    }
    public String getNom() {
        return nom;
    }
    public void setNom( String nom ) {
        this.nom = nom;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail( String email ) {
        this.email = email;
    }
    public String getMotDePasse() {
        return motDePasse;
    }
    public void setMotDePasse( String motDePasse ) {
        this.motDePasse = motDePasse;
    }
      
}
