package com.tuto.pro.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jasypt.util.password.ConfigurablePasswordEncryptor;

import com.tuto.pro.beans.Utilisateur;
import com.tuto.pro.dao.UtilisateurDao;

public final class ConnexionForm {
    
    private static final String ALGO_CHIFFREMENT = "SHA-256";
    
    private static final String CHAMP_EMAIL  = "email";
    private static final String CHAMP_PASS   = "motdepasse";

    private String              resultat;
    private Map<String, String> erreurs      = new HashMap<String, String>();
    private UtilisateurDao utilisateurDao;
    
    private Boolean b = new Boolean(true);
    
    public ConnexionForm(UtilisateurDao utilisateurDao) {
        this.utilisateurDao = utilisateurDao;
    }
    
    
    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public Map connecterUtilisateur( HttpServletRequest request ) {
        /* Récupération des champs du formulaire */
        String email = getValeurChamp( request, CHAMP_EMAIL );
        String motDePasse = getValeurChamp( request, CHAMP_PASS );
        String prenom = new String();
        String nom = new String();

        Utilisateur utilisateur = new Utilisateur();

        traiterEmail( email, utilisateur );
        traiterMotsDePasse( motDePasse, utilisateur );

        /* Initialisation du résultat global de la validation. */
        if ( erreurs.isEmpty() ) {
            
            Utilisateur utilisateur_rslt = utilisateurDao.trouver( email );
            
            
            String encryptedPassword = utilisateur_rslt.getMotDePasse();
            
            ConfigurablePasswordEncryptor passwordEncryptor = new ConfigurablePasswordEncryptor();
            passwordEncryptor.setAlgorithm( ALGO_CHIFFREMENT );
            passwordEncryptor.setPlainDigest( false );
            
            b = passwordEncryptor.checkPassword( motDePasse, encryptedPassword );
            
            if(b) {
                resultat = "Succès de la connexion.";
                prenom = utilisateur_rslt.getPrenom();
                nom = utilisateur_rslt.getNom();
                utilisateur.setPrenom( prenom );
                utilisateur.setNom( nom );
            }
            
            else {
                resultat = "Mot de passe saisi incorrect.";
            }
        }
        
        else {
            resultat = "Échec de la connexion.";
            b = false;
        }

        Map<String, Object> o = new HashMap<String, Object>();
                
        o.put( "utilisateur", utilisateur );
        o.put( "connexion_result",  b);
        
        return o;
    }

    /*
     * Appel à la validation de l'adresse email reçue et initialisation de la
     * propriété email du bean
     */
    private void traiterEmail( String email, Utilisateur utilisateur ) {
        try {
            validationEmail( email );
        } catch ( FormValidationException e ) {
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }
        utilisateur.setEmail( email );
    }
    
    /*
     * Appel à la validation des mots de passe reçus, chiffrement du mot de
     * passe et initialisation de la propriété motDePasse du bean
     */
    private void traiterMotsDePasse( String motDePasse, Utilisateur utilisateur ) {
        try {
            validationMotDePasse( motDePasse );
        } catch ( FormValidationException e ) {
            setErreur( CHAMP_PASS, e.getMessage() );
        }
        utilisateur.setMotDePasse( motDePasse );
    }
    
    /**
     * Valide l'adresse email saisie.
     */
    private void validationEmail( String email ) throws FormValidationException {
        if ( email != null && !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
            throw new FormValidationException( "Merci de saisir une adresse mail valide." );
        }
    }

    /**
     * Valide le mot de passe saisi.
     */
    private void validationMotDePasse( String motDePasse ) throws FormValidationException {
        if ( motDePasse != null ) {
            if ( motDePasse.length() < 3 ) {
                throw new FormValidationException( "Le mot de passe doit contenir au moins 3 caractères." );
            }
        } else {
            throw new FormValidationException( "Merci de saisir votre mot de passe." );
        }
    }

    /*
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }

    /*
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur;
        }
    }
}