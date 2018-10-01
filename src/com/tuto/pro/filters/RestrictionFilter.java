package com.tuto.pro.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RestrictionFilter implements Filter {
    
    public static final String ACCES_CONNEXION     = "/connexion";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    
    public void init( FilterConfig config ) throws ServletException {
    }

    public void doFilter( ServletRequest req, ServletResponse res, FilterChain chain ) throws IOException,
            ServletException {
        
        /* Cast des objets request et response */
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        /* Non-filtrage des ressources statiques */
        /* Typiquement, dans notre cas si nous nous rendons sur http://localhost:8080/pro/restreint/accesRestreint.jsp,
           la méthode getRequestURI() va renvoyer /pro/restreint/accesRestreint.jsp et chemin va contenir uniquement /restreint/accesRestreint.jsp
         */
        String chemin = request.getRequestURI().substring( request.getContextPath().length() );
        /* nous testons si cette chaîne chemin commence par /inc :
           si c'est le cas, cela signifie que la page demandée est une des ressources statiques que nous avons placées sous le répertoire inc,
           et qu'il ne faut donc pas lui appliquer le filtre !
         */
        if ( chemin.startsWith( "/inc" ) || (chemin.startsWith( "/inscription" )) ) {
            chain.doFilter( request, response );
            return;
        }
        
        /* Récupération de la session depuis la requête */
        HttpSession session = request.getSession();

        /**
         * Si l'objet utilisateur n'existe pas dans la session en cours, alors
         * l'utilisateur n'est pas connecté.
         */
        if ( session.getAttribute( ATT_SESSION_USER ) == null ) {
            /* Redirection vers la page publique */
            request.getRequestDispatcher( ACCES_CONNEXION ).forward( request, response );
        } else {
            /* Affichage de la page restreinte */
            chain.doFilter( request, response );
        }
        
    }

    public void destroy() {
    }
}