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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp : Health Manager</title>
</head>

<body>
	<div class="container">
		<%@include file="header.jsp" %>
		<div class="col-md-4 column">
			<p>${errorMessage}</p>
			<form id="user" role="form" class="form-inline" method="post" action="newUser">
				<div class="form-group">
					 <label for="username">User name</label>
					 <input type="text" class="form-control" id="username" name="username"/>
				</div>
				<div class="form-group">
					 <label for="email">Email address</label>
					 <input type="email" class="form-control" id="email" name="email"/>
				</div>
				<div class="form-group">
					 <label for="password">Password</label>
					 <input type="password" class="form-control" id="password" name="password"/>
				</div>
				<div class="form-group">
					 <label for="confirmPassword">Confirm Password</label>
					 <input type="password" class="form-control" id="confirmPassword" name="confirmPassword"/>
				</div>
				<div class="form-group">
					 <label for="firstName">First Name</label>
					 <input type="text" class="form-control" id="firstName" name="firstName"/>
				</div>
				<div class="form-group">
					 <label for="lastName">Last Name</label>
					 <input type="text" class="form-control" id="lastName" name="lastName"/>
				</div>
				<div class="form-group">
					 <label for="date">Date of birth</label>
					 <input type="date" class="form-control" name="dateOfBirth" id="dateOfBirth" /><br>
				</div>
				<br><br>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			<br>
		</div>
		<div class="col-md-4 column">
		</div>
		<div class="col-md-4 column">
		</div>
	</div>
	
</body>

</html>