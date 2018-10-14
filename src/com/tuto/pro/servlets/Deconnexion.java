package com.tuto.pro.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Deconnexion extends HttpServlet {
    public static final String URL_REDIRECTION = "/pro/connexion";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Récupération de la session en cours */
        HttpSession session = request.getSession();
        
        /* Destruction de la session en cours */ 
        session.invalidate();

        /* Redirection vers la page d'accueil */
        response.sendRedirect( URL_REDIRECTION );
        
    }
}