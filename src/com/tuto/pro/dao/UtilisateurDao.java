package com.tuto.pro.dao;

import com.tuto.pro.beans.Utilisateur;

public interface UtilisateurDao {

    void creer( Utilisateur utilisateur ) throws DAOException;
    Utilisateur trouver( String email ) throws DAOException;
    
}
