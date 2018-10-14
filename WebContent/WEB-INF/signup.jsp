<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Application Demo DevOps</title>

	<link rel="shortcut icon" href="<c:url value="/inc/assets/images/gt_favicon.png"></c:url>">
	
	<link rel="stylesheet" media="screen" href="<c:url value="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700"></c:url>">
	<link type="text/css" rel="stylesheet" href="<c:url value="/inc/assets/css/bootstrap.min.css"></c:url>">
	<link type="text/css" rel="stylesheet" href="<c:url value="/inc/assets/css/font-awesome.min.css"></c:url>">

	<!-- Custom styles for our template -->
	<link type="text/css" rel="stylesheet" href="<c:url value="/inc/assets/css/bootstrap-theme.css"></c:url>" media="screen" >
	<link type="text/css" rel="stylesheet" href="<c:url value="/inc/assets/css/main.css"></c:url>">
	<link type="text/css" rel="stylesheet" href="<c:url value="/inc/assets/css/form.css"></c:url>" />

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<%--[if lt IE 9]>
	<script src="<c:url value="/inc/assets/js/html5shiv.js"></c:url>"></script>
	<script src="<c:url value="/inc/assets/js/respond.min.js"></c:url>"></script>
	<![endif]--%>
</head>

<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom" >
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				<a class="navbar-brand" href="<c:url value="/connexion"></c:url>"><img src="<c:url value="/inc/assets/images/devops_logo.png"></c:url>" alt="Demo DevOps"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li class="active"><a class="btn" href="<c:url value="/connexion"></c:url>">Connectez-vous</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title">Créer votre compte</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">Créer votre compte</h3>

							<hr>

        					<form method="post" action="inscription">
								<div class="top-margin">
									<label>Prénom</label>
									<input type="text" class="form-control" id="prenom" name="prenom" value="<c:out value="${utilisateur.prenom}"/>" size="20" maxlength="20"/>
									<span class="erreur-info">${formulaire.erreurs['prenom']}</span>
								</div>
								<div class="top-margin">
									<label>Nom</label>
					                <input type="text" class="form-control" id="nom" name="nom" value="<c:out value="${utilisateur.nom}"/>" size="20" maxlength="20" />
					                <span class="erreur-info">${formulaire.erreurs['nom']}</span>
								</div>
								<div class="top-margin">
									<label>Email <span class="text-danger">*</span></label>
					                <input type="email" class="form-control" id="email" name="email" value="<c:out value="${utilisateur.email}"/>" size="20" maxlength="60" />
					                <span class="erreur-info">${formulaire.erreurs['email']}</span>
								</div>

								<div class="row top-margin">
									<div class="col-sm-6">
										<label>Password <span class="text-danger">*</span></label>
						                <input type="password" class="form-control" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
						                <span class="erreur-info">${formulaire.erreurs['motdepasse']}</span>
									</div>
									<div class="col-sm-6">
										<label>Confirmation Password <span class="text-danger">*</span></label>
						                <input type="password" class="form-control" id="confirmation" name="confirmation" value="" size="20" maxlength="20" />
						                <span class="erreur-info">${formulaire.erreurs['confirmation']}</span>
									</div>
								</div>

								<hr>

								<div class="row">
<!-- 									<div class="col-lg-8">
										<label class="checkbox">
											<input type="checkbox"> 
											I've read the <a href="page_terms.html">Terms and Conditions</a>
										</label>                        
									</div> -->
									<div class="text-center">
										<button class="btn btn-action" type="submit" value="Inscription">Inscription</button>
									</div>
								</div>
								
								<hr>
								
								<div class="row">
									<div class="text-left">
										<p class="${empty formulaire.erreurs ? 'succes' : 'erreur'}">
						                		<c:out value="${formulaire.resultat}"/>
						                </p>
									</div>
								</div>					                
								
							</form>

						</div>
					</div>

				</div>
				
			</article>
			<!-- /Article -->

		</div>
	</div>	<!-- /container -->
	
<%-- 	<c:import url="/WEB-INF/footer.jsp"></c:import> --%>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="<c:url value="/inc/assets/js/headroom.min.js"></c:url>"></script>
	<script src="<c:url value="/inc/assets/js/jQuery.headroom.min.js"></c:url>"></script>
	<script src="<c:url value="/inc/assets/js/template.js"></c:url>"></script>
</body>
</html>