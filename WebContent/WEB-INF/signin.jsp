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
					<li class="active"><a class="btn" href="<c:url value="/inscription"></c:url>">Créer votre compte</a></li>
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
					<h1 class="page-title">Connectez-vous</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">Connectez-vous à votre compte</h3>
							<!-- <p class="text-center text-muted">Lorem ipsum dolor sit amet, <a href="signup.html">Register</a> adipisicing elit. Quo nulla quibusdam cum doloremque incidunt nemo sunt a tenetur omnis odio. </p> -->
							<hr>
							
        					<form method="post" action="connexion">
								<div class="top-margin">
									<label>Email <span class="text-danger">*</span></label>
									<input type="email" id="email" name="email" value="<c:out value="${utilisateur.email}"/>" class="form-control">
									<span class="erreur">${form.erreurs['email']}</span>
								</div>
								<div class="top-margin">
									<label>Password <span class="text-danger">*</span></label>
									<input type="password" id="motdepasse" name="motdepasse" value="" class="form-control">
                					<span class="erreur">${form.erreurs['motdepasse']}</span>
                					
					                <c:if test="${(checkPassword eq true)}">
					                	<p class="succes">${form.resultat}</p>
					                </c:if>
					                
					                <c:if test="${checkPassword eq false}">
					                	<p class="erreur-info">${form.resultat}</p>
					                </c:if>  
                					
								</div>

								<hr>

								<div class="row">
									<div class="text-center">
										<button class="btn btn-action" type="submit">Connexion</button>
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