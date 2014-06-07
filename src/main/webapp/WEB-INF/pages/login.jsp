<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>  

<!-- Latest compiled and minified JavaScript -->
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<script>
function validateAndLogin(){
	var emailAddress = document.getElementById("exampleInputEmail1").value;
	var password = document.getElementById("exampleInputPassword1").value;
    $.ajax({
        url: './signin?email=' + emailAddress + '&pass=' + password,
        dataType: 'json',
        success: function (response) {
        	window.location = "/HealthManager/dashboard/?token=" + response.sessionToken;
        }
    });
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login : Health Manager</title>
</head>
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
					</div>
					
				</nav>
			</div>
		</div>
		<div class="col-md-4 column">
			<form role="form" class="form-inline">
				<div class="form-group">
					 <label for="exampleInputEmail1">Email address</label><input type="email" class="form-control" id="exampleInputEmail1" />
				</div>
				<div class="form-group">
					 <br>
					 <label for="exampleInputPassword1">Password</label><input type="password" class="form-control" id="exampleInputPassword1" />
				</div>
			</form>
			<br>
			<button type="submit" class="btn btn-primary" onclick="validateAndLogin()">Login</button>
		</div>
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
	
</body>
</html>