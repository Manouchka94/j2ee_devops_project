package com.tuto.pro.servlets;

import com.tuto.pro.beans.Utilisateur;
import com.tuto.pro.forms.*;
import com.tuto.pro.dao.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Home extends HttpServlet{

    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "formulaire";
    public static final String VUE = "/restreint/home.jsp";
    public static final String CONF_DAO_FACTORY = "daofactory";

    private UtilisateurDao utilisateurDao;

    public void init() throws ServletException {
        /* Récupération d'une instance de notre DAO Utilisateur */
        this.utilisateurDao = ( (DAOFactory) getServletContext().getAttribute( CONF_DAO_FACTORY ) ).getUtilisateurDao();
    }
    
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        
        InscriptionForm formulaire = new InscriptionForm(utilisateurDao);
        
        Utilisateur utilisateur = new Utilisateur();
        
        utilisateur = formulaire.inscrireUtilisateur( request );
        
        request.setAttribute( ATT_FORM, formulaire );
        request.setAttribute( ATT_USER, utilisateur );
        
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        
    }
    
}
