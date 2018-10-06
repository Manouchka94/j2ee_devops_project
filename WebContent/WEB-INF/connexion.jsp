<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Connexion</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/assets/css/form.css"/>" />
    </head>
    <body>
        <form method="post" action="connexion">
            <fieldset>
                <legend>Connexion</legend>
                <p>Vous pouvez vous connecter via ce formulaire.</p>
                <c:if test="${empty sessionScope.sessionUtilisateur && !empty requestScope.intervalleConnexions}">
                	<p class="info">(Vous ne vous �tes pas connect�(e) depuis ce navigateur depuis ${requestScope.intervalleConnexions})</p>
                </c:if>

                <label for="email">Adresse email <span class="requis">*</span></label>
                <input type="email" id="email" name="email" value="<c:out value="${utilisateur.email}"/>" size="20" maxlength="60" />
                <span class="erreur">${form.erreurs['email']}</span>
                <br />

                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['motdepasse']}</span>
                
                <c:if test="${(checkPassword eq true)}">
                	<p class="succes">${form.resultat}</p>
                </c:if>
                
                <c:if test="${checkPassword eq false}">
                	<p class="erreur">${form.resultat}</p>
                </c:if>   
                <br />

                <label for="memoire">Se souvenir de moi</label>
                <input type="checkbox" id="memoire" name="memoire" />
                <br />

                <input type="submit" value="Connexion" class="sansLabel" />
                <br />

                
                <c:if test="${(!empty sessionScope.sessionUtilisateur) && (checkPassword eq true)}">     
                	<p class="succes">
                		Vous �tes connect�(e) avec l'adresse : ${ sessionScope.sessionUtilisateur.email }
                	</p>	
                </c:if>
                
            </fieldset>
        </form>
    </body>
</html>