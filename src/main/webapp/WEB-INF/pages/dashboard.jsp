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


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DashBoard | ${firstName} ${lastName}</title>
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
	<div class="row clearfix">
		<div class="col-md-12 column">
			<p>
			Welcome ${firstName} ${lastName}  
			</p>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="tabbable" id="tabs-651330">
				<ul class="nav nav-tabs">
					<li class="active">
						<a href="#panel-725440" data-toggle="tab">Add a record</a>
					</li>
					<li>
						<a href="#panel-25205" data-toggle="tab">View records</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="panel-725440">
						<div class="row clearfix">
							<br>
							<div class="container">
								<div class="row clearfix">
									<div class="col-md-12 column">
										<div class="panel-group" id="panel-669064">
											<div class="panel panel-default">
												<div class="panel-heading">
													 <a class="panel-title" data-toggle="collapse" data-parent="#panel-669064" href="#panel-element-740146">Add a prescription</a>
												</div>
												<div id="panel-element-740146" class="panel-collapse in">
													<div class="panel-body">
														<form id="prescription" role="form" class="form-inline" method="post" action="addPrescription">
															<div class="form-group">
																 <label for="date">Date</label>
																 <input type="date" class="form-control" name="date" id="date" /><br>
															</div>
															<div class="form-group">
																 <label for="symptoms">Symptoms (comma separated)</label>
																 <input type="text" class="form-control" name="symptoms" id="symptoms" /><br>
															</div>
															<div class="form-group">
																 <label for="doctor">Doctor</label>
																 <input type="text" class="form-control" name="doctor" id="doctor"/><br>
															</div>
															<div class="form-group" >
																 <input type="hidden" name="userId" id="userId" value="${userId}"/><br>
															</div>
															<br><br>
															<button type="submit" class="btn btn-default">Submit</button>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="panel-25205">
						<p>
							Coming soon.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>