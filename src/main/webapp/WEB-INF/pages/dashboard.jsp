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
function fetchPrescriptions(){
	var token = '${token}';

    $.ajax({
        url: './loadPrescriptions?token=' + token,
        dataType: 'json',
        success: function (prescriptions) {
        	if (prescriptions.results && prescriptions.results.length > 0){
        		
        		  var str = "<table class=\"table\" >";

        		  str+="<thead><tr><th>#</th><th>Date</th><th>Doctor</th><th>Symptoms</th></tr></thead><tbody>";
        		  
        		  for (var i = 0; i < prescriptions.results.length; i++){
        			  var pres = prescriptions.results[i];
        			  str+="<tr>";
        			  str+="<td>"+ (i + 1) +"</td>";
        			  str+="<td>"+ pres.dateOfIssue +"</td>";
        			  str+="<td>"+ pres.doctorName +"</td>";
        			  if (pres.symptoms != null && pres.symptoms.length > 0){
        				  str+="<td>";
        				  for (var j = 0; j < pres.symptoms.length; j++){
                			  var symp = pres.symptoms[j];
                			  str+=symp + " ";
                	      }
        				  str+="</td>";
        			  }
        			  str+="</tr>";
        	      }
        	  	  str+="</tbody>";
        	      str+="</table>";  
        	      document.getElementById("prescriptionTable").innerHTML = str;	
        	  }
        }
    });
}
</script>

<script type="text/javascript">
window.onload = function() {

	fetchPrescriptions();
};
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Kronica provides health monitoring and education solutions for diseases like Diabetes, Liver issues and in general">

<title>DashBoard | ${firstName} ${lastName}</title>
</head>
<body>

<div class="container">
	<%@include file="header.jsp" %>
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
						<a href="#panel-25205" data-toggle="tab">View records</a>
					</li>
					<li>
						<a href="#panel-725440" data-toggle="tab">Add a record</a>
					</li>
				</ul>
				<div class="tab-content">
				<div class="tab-pane active" id="panel-25205">
					<div class="row clearfix">
							<br>
							<div class="container">
								<div class="row clearfix">
									<div class="col-md-12 column">
										<div class="panel-group" id="panel-669063">
											<div class="panel panel-default">
												<div class="panel-heading">
													 <a class="panel-title" data-toggle="collapse" data-parent="#panel-669063" href="#panel-element-740145">View prescriptions</a>
												</div>
												<div id="panel-element-740145" class="panel-collapse in">
													<div class="panel-body" id="prescriptionTable">
													</div>
													<!--div class="col-md-12 column">
														 <button type="button" class="btn" onclick="refreshPrescriptions()">Refresh</button>
													</div-->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="panel-725440">
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
																 <input type="hidden" name="sessionToken" id="sessionToken" value="${token}"/><br>
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
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>