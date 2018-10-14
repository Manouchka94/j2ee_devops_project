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

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<%--[if lt IE 9]>
	<script src="<c:url value="/inc/assets/js/html5shiv.js"></c:url>"></script>
	<script src="<c:url value="/inc/assets/js/respond.min.js"></c:url>"></script>
	<![endif]--%>
</head>

<body class="home">
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
					<li class="active"><a class="btn" href="<c:url value="/deconnexion"></c:url>">Deconnexion</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container vignets">
			<div class="row">
				<h1 class="lead">
					Salut 
					<c:out value="${sessionScope.sessionUtilisateur.prenom}"></c:out> <br/>
				</h1>
				<p class="tagline">Bienvenue sur l'application de demonstration.</p>
			</div>
		</div>
	<div class="container text-center vignets1">
		<br> <br>
		<h2 class="thin">Cette application a été déployée via la plateforme DevOps.</h2>
		<p><a class="btn btn-default btn-lg top-space" role="button">S'informer</a>
	</div>
	</header>
	<!-- /Header -->

	<!-- Intro -->
<!-- 	<div class="container text-center">
		<br> <br>
		<h2 class="thin">The best place to tell people why they are here</h2>
		<p class="text-muted">
			The difference between involvement and commitment is like an eggs-and-ham breakfast:<br> 
			the chicken was involved; the pig was committed.
		</p>
	</div> -->
	<!-- /Intro-->
		
	<!-- Highlights - jumbotron -->
	<div class="jumbotron">
		<div class="container">
			
			<h2 class="text-center">Les équipes</h2>
			
			<div class="row text-center">
				<div class="col-md-4 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-cogs fa-5"></i>Intégration Continue</h4></div>
					<div class="h-body text-center">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque aliquid adipisci aspernatur. Soluta quisquam dignissimos earum quasi voluptate. Amet, dignissimos, tenetur vitae dolor quam iusto assumenda hic reprehenderit?</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-check-circle fa-5"></i>Test Continu</h4></div>
					<div class="h-body text-center">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores, commodi, sequi quis ad fugit omnis cumque a libero error nesciunt molestiae repellat quos perferendis numquam quibusdam rerum repellendus laboriosam reprehenderit! </p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-arrow-circle-o-right fa-5"></i>Déploiement Continu</h4></div>
					<div class="h-body text-center">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, vitae, perferendis, perspiciatis nobis voluptate quod illum soluta minima ipsam ratione quia numquam eveniet eum reprehenderit dolorem dicta nesciunt corporis?</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-lock fa-5"></i>Sécurité Continue</h4></div>
					<div class="h-body text-center">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, excepturi, maiores, dolorem quasi reprehenderit illo accusamus nulla minima repudiandae quas ducimus reiciendis odio sequi atque temporibus facere corporis eos expedita? </p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-wrench fa-5"></i>Exploitation Continue</h4></div>
					<div class="h-body text-center">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, excepturi, maiores, dolorem quasi reprehenderit illo accusamus nulla minima repudiandae quas ducimus reiciendis odio sequi atque temporibus facere corporis eos expedita? </p>
					</div>
				</div>
			</div> <!-- /row  -->
		
		</div>
	</div>
	<!-- /Highlights -->

	<!-- container -->
	<div class="container">

		<h2 class="text-center top-space">Frequently Asked Questions</h2>
		<br>

		<div class="row">
			<div class="col-sm-6">
				<h3>Which code editor would you recommend?</h3>
				<p>I'd highly recommend you <a href="http://www.sublimetext.com/">Sublime Text</a> - a free to try text editor which I'm using daily. Awesome tool!</p>
			</div>
			<div class="col-sm-6">
				<h3>Nice header. Where do I find more images like that one?</h3>
				<p>
					Well, there are thousands of stock art galleries, but personally, 
					I prefer to use photos from these sites: <a href="http://unsplash.com">Unsplash.com</a> 
					and <a href="http://www.flickr.com/creativecommons/by-2.0/tags/">Flickr - Creative Commons</a></p>
			</div>
		</div> <!-- /row -->

		<div class="row">
			<div class="col-sm-6">
				<h3>Can I use it to build a site for my client?</h3>
				<p>
					Yes, you can. You may use this template for any purpose, just don't forget about the <a href="http://creativecommons.org/licenses/by/3.0/">license</a>, 
					which says: "You must give appropriate credit", i.e. you must provide the name of the creator and a link to the original template in your work. 
				</p>
			</div>
			<div class="col-sm-6">
				<h3>Can you customize this template for me?</h3>
				<p>Yes, I can. Please drop me a line to sergey-at-pozhilov.com and describe your needs in details. Please note, my services are not cheap.</p>
			</div>
		</div> <!-- /row -->

		<div class="jumbotron top-space">
			<h4>Dicta, nostrum nemo soluta sapiente sit dolor quae voluptas quidem doloribus recusandae facere magni ullam suscipit sunt atque rerum eaque iusto facilis esse nam veniam incidunt officia perspiciatis at voluptatibus. Libero, aliquid illum possimus numquam fuga.</h4>
     		<p class="text-right"><a class="btn btn-primary btn-large">Learn more Â»</a></p>
  		</div>

</div>	<!-- /container -->
	
	<!-- Social links. @TODO: replace by link/instructions in template -->
	<section id="social">
		<div class="container">
			<div class="wrapper clearfix">
				<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style">
				<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
				<a class="addthis_button_tweet"></a>
				<a class="addthis_button_linkedin_counter"></a>
				<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
				</div>
				<!-- AddThis Button END -->
			</div>
		</div>
	</section>
	<!-- /social links -->

	<c:import url="/WEB-INF/footer.jsp"></c:import>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="<c:url value="/inc/assets/js/headroom.min.js"></c:url>"></script>
	<script src="<c:url value="/inc/assets/js/jQuery.headroom.min.js"></c:url>"></script>
	<script src="<c:url value="/inc/assets/js/template.js"></c:url>"></script>
</body>
</html>