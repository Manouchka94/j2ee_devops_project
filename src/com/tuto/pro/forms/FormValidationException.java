package com.tuto.pro.forms;

public class FormValidationException extends Exception{
    /*
     * Constructeur
     */
    
    // Création d'une exception dédiée aux erreurs de validation
    public FormValidationException( String message ) {
        super( message );
    }
}
