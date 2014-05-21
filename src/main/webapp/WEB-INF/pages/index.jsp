<html>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>  

<!-- Latest compiled and minified JavaScript -->
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<script>
function takeToSignup(){
	window.location = '/HealthManager/signup';
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome : Health Manager</title>
<body>

	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<nav class="navbar navbar-default navbar-static-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="/HealthManager">Health Manager</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">Home</a>
						</li>
						<li>
							<a href="#">About</a>
						</li>
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Our Products<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">MedBook</a>
								</li>
								<li>
									<a href="#">SuperDoc</a>
								</li>
								<li>
									<a href="#">HealthMap</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">What's new in Healthcare?</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="#">Advertise your clinic</a>
								</li>
							</ul>
						</li>
					</ul>
					<!-- <form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control"/>
						</div> <button type="submit" class="btn btn-default">Submit</button>
					</form> -->
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="/HealthManager/login">Log In</a>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="carousel slide" id="carousel-823710">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-823710">
					</li>
					<li data-slide-to="1" data-target="#carousel-823710">
					</li>
					<li data-slide-to="2" data-target="#carousel-823710" class="active">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item">
						<img alt="" src="http://lorempixel.com/1600/500/sports/1" />
						<div class="carousel-caption">
							<h4>
								Health1
							</h4>
							<p>
								Some Image about healthcare
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="http://lorempixel.com/1600/500/sports/2" />
						<div class="carousel-caption">
							<h4>
								Health2
							</h4>
							<p>
								Some Image about healthcare
							</p>
						</div>
					</div>
					<div class="item active">
						<img alt="" src="http://lorempixel.com/1600/500/sports/3" />
						<div class="carousel-caption">
							<h4>
								Health3
							</h4>
							<p>
								Some Image about healthcare
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-823710" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-823710" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<br><br><div class="col-md-12 column">
			 <center><button type="button" class="btn btn-primary btn-lg" onclick="takeToSignup()">Sign Up</button></center>
		</div>
	</div>
</div>
			
</body>
</html>