<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>View Patient | Kronica</title>

<!-- Bootstrap Core CSS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Timeline CSS -->
<link href="../css/plugins/timeline.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript">

	$(function() {

		$.plot($("#placeholder"), [ [[0, 0], [1, 1]] ], { yaxis: { max: 1 } });

	});

	</script>

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/HealthManager">Kronica</a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">

				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> New Comment <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
										class="pull-right text-muted small">12 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> Message Sent <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> New Task <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Alerts</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
								Logout</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>
						<li><a class="active" href="/HealthManager/adminDashboard"><i
								class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
						<!--                         <li> -->
						<!--                             <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a> -->
						<!--                             <ul class="nav nav-second-level"> -->
						<!--                                 <li> -->
						<!--                                     <a href="flot.html">Flot Charts</a> -->
						<!--                                 </li> -->
						<!--                                 <li> -->
						<!--                                     <a href="morris.html">Morris.js Charts</a> -->
						<!--                                 </li> -->
						<!--                             </ul> -->
						<!--                             /.nav-second-level -->
						<!--                         </li> -->
						<!--                         <li> -->
						<!--                             <a href="tables.html"><i class="fa fa-table fa-fw"></i> Tables</a> -->
						<!--                         </li> -->
						<li class="active"><a href="#"><i
								class="fa fa-table fa-fw"></i> Data Navigation<span
								class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a class="active"
									href="/HealthManager/data/findPatient">Find Patient</a></li>
								<li><a href="/HealthManager/forms/addSecondaryUser">Add
										Secondary User</a></li>
								<li><a href="/HealthManager/forms/addPrescription">Add
										Prescription</a></li>
								<li><a href="notifications.html">Notifications</a></li>
								<li><a href="typography.html">Typography</a></li>
								<li><a href="grid.html">Grid</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<li><a href="/HealthManager/forms"><i
								class="fa fa-edit fa-fw"></i> Forms<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="/HealthManager/forms/addUser">Add User</a></li>
								<li><a href="/HealthManager/forms/addSecondaryUser">Add
										Secondary User</a></li>
								<li><a href="/HealthManager/forms/addPrescription">Add
										Prescription</a></li>
								<li><a href="notifications.html">Notifications</a></li>
								<li><a href="typography.html">Typography</a></li>
								<li><a href="grid.html">Grid</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<!--                         <li> -->
						<!--                             <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a> -->
						<!--                             <ul class="nav nav-second-level"> -->
						<!--                                 <li> -->
						<!--                                     <a href="panels-wells.html">Panels and Wells</a> -->
						<!--                                 </li> -->
						<!--                                 <li> -->
						<!--                                     <a href="buttons.html">Buttons</a> -->
						<!--                                 </li> -->
						<!--                                 <li> -->
						<!--                                     <a href="notifications.html">Notifications</a> -->
						<!--                                 </li> -->
						<!--                                 <li> -->
						<!--                                     <a href="typography.html">Typography</a> -->
						<!--                                 </li> -->
						<!--                                 <li> -->
						<!--                                     <a href="grid.html">Grid</a> -->
						<!--                                 </li> -->
						<!--                             </ul> -->
						<!--                             /.nav-second-level -->
						<!--                         </li> -->
						<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
								Multi-Level Dropdown<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="#">Second Level Item</a></li>
								<li><a href="#">Second Level Item</a></li>
								<li><a href="#">Third Level <span class="fa arrow"></span></a>
									<ul class="nav nav-third-level">
										<li><a href="#">Third Level Item</a></li>
										<li><a href="#">Third Level Item</a></li>
										<li><a href="#">Third Level Item</a></li>
										<li><a href="#">Third Level Item</a></li>
									</ul> <!-- /.nav-third-level --></li>
							</ul> <!-- /.nav-second-level --></li>
						<li><a href="#"><i class="fa fa-files-o fa-fw"></i>
								Sample Pages<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="blank.html">Blank Page</a></li>
								<li><a href="login.html">Login Page</a></li>
							</ul> <!-- /.nav-second-level --></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">${patient_name}</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-green">
						<div class="panel-heading">Primary Information</div>
						<div class="row panel-body">
							<div class="col-lg-4">
								<p>Signup Date: ${signup_date}</p>
								<p>Next gluco test due on: ${next_gluco_test_due_date}</p>
								<p>Last patient contact: ${last_patient_contact_date}</p>
								<p>Next follow-up time: ${next_followup_date}</p>
							</div>
							<div class="col-lg-4">
								<p>Diabetes Educator: ${diabetes_educator_name}</p>
								<p>Dietician: ${dietician_name}</p>
								<p>Next lab test: ${next_lab_test_name}</p>
								<b>Next lab test on: ${next_lab_test_date}</b>
							</div>
							<div class="col-lg-4">
								<p>Kronica UID: ${uid}</p>
								<p>Gluco test device: ${gluco_device_name}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">Personal Information</div>
						<div class="row panel-body">
							<div class="col-lg-4">
								<p>Email Address: ${email}</p>
								<p>Age: ${age}</p>
								<p>Gender: ${gender}</p>
							</div>
							<div class="col-lg-4">
								<p>Phone Number: ${phone_number}</p>
								<p>Address: ${address}</p>
							</div>
							<div class="col-lg-4">
								<p>Type of diabetes: ${type_diabetes}</p>
								<p>Diabetes since: ${diabetes_since_date}</p>
								<p>Gluco Test frequency: ${gluco_test_frequency}</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							Diabetes Tracking Information
						</div>
						<div class="panel-body">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#tabular" data-toggle="tab">Tables</a>
								</li>
								<li><a href="#charts" data-toggle="tab">Charts</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane fade in active" id="tabular">
								<br>
									<div class="row">
										<div class="col-lg-4">
											<div class="panel panel-default">
												<div class="panel-heading">Pre-Meal Readings</div>
												<!-- /.panel-heading -->
												<div class="panel-body">
													<div class="table-responsive">
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Value</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>${pre_date_0}</td>
																	<td>${pre_reading_0}</td>
																</tr>
																<tr>
																	<td>${pre_date_1}</td>
																	<td>${pre_reading_1}</td>
																</tr>
																<tr>
																	<td>${pre_date_2}</td>
																	<td>${pre_reading_2}</td>
																</tr>
																<tr>
																	<td>${pre_date_3}</td>
																	<td>${pre_reading_3}</td>
																</tr>
																<tr>
																	<td>${pre_date_4}</td>
																	<td>${pre_reading_4}</td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- /.table-responsive -->
												</div>
												<!-- /.panel-body -->
											</div>
											<!-- /.panel -->
										</div>
										<div class="col-lg-4">
											<div class="panel panel-default">
												<div class="panel-heading">Post-Meal Readings</div>
												<!-- /.panel-heading -->
												<div class="panel-body">
													<div class="table-responsive">
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Value</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>${post_date_0}</td>
																	<td>${post_reading_0}</td>
																</tr>
																<tr>
																	<td>${post_date_1}</td>
																	<td>${post_reading_1}</td>
																</tr>
																<tr>
																	<td>${post_date_2}</td>
																	<td>${post_reading_2}</td>
																</tr>
																<tr>
																	<td>${post_date_3}</td>
																	<td>${post_reading_3}</td>
																</tr>
																<tr>
																	<td>${post_date_4}</td>
																	<td>${post_reading_4}</td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- /.table-responsive -->
												</div>
												<!-- /.panel-body -->
											</div>
											<!-- /.panel -->
										</div>
										<div class="col-lg-4">
											<div class="panel panel-default">
												<div class="panel-heading">Other Readings</div>
												<!-- /.panel-heading -->
												<div class="panel-body">
													<div class="table-responsive">
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Value</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>${other_date_0}</td>
																	<td>${other_reading_0}</td>
																</tr>
																<tr>
																	<td>${other_date_1}</td>
																	<td>${other_reading_1}</td>
																</tr>
																<tr>
																	<td>${other_date_2}</td>
																	<td>${other_reading_2}</td>
																</tr>
																<tr>
																	<td>${other_date_3}</td>
																	<td>${other_reading_3}</td>
																</tr>
																<tr>
																	<td>${other_date_4}</td>
																	<td>${other_reading_4}</td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- /.table-responsive -->
												</div>
												<!-- /.panel-body -->
											</div>
											<!-- /.panel -->
										</div>
									</div>
								</div>
								
								<div class="tab-pane fade" id="charts">
									<h4>Profile Tab</h4>
									<div class="demo-container">
										<div id="placeholder" class="demo-placeholder"></div>
									</div>
								</div>
							</div>
						</div>

					<!-- /.col-lg-6 -->
				</div>
			</div>
		</div>
		
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-danger">
					<div class="panel-heading">Lab Test Results</div>
					<div class="panel-body">
						<ul class="nav nav-tabs">
								<li class="active"><a href="#blood" data-toggle="tab">Blood</a>
								</li>
								<li><a href="#foot" data-toggle="tab">Foot</a></li>
								<li><a href="#retina" data-toggle="tab">Retina</a></li>
								<li><a href="#heart" data-toggle="tab">Heart</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane fade in active" id="blood">
								<br>
									<div class="row">
										<div class="col-lg-4">
											<div class="panel panel-default">
												<div class="panel-heading">RBC Count Readings</div>
												<!-- /.panel-heading -->
												<div class="panel-body">
													<div class="table-responsive">
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Value</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>${pre_date_0}</td>
																	<td>${pre_reading_0}</td>
																</tr>
																<tr>
																	<td>${pre_date_1}</td>
																	<td>${pre_reading_1}</td>
																</tr>
																<tr>
																	<td>${pre_date_2}</td>
																	<td>${pre_reading_2}</td>
																</tr>
																<tr>
																	<td>${pre_date_3}</td>
																	<td>${pre_reading_3}</td>
																</tr>
																<tr>
																	<td>${pre_date_4}</td>
																	<td>${pre_reading_4}</td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- /.table-responsive -->
												</div>
												<!-- /.panel-body -->
											</div>
											<!-- /.panel -->
										</div>
									</div>
								</div>
								
								<div class="tab-pane fade" id="foot">
									<br>
									<div class="row">
										<div class="col-lg-4">
											<div class="panel panel-default">
												<div class="panel-heading">Foot skin rash Readings</div>
												<!-- /.panel-heading -->
												<div class="panel-body">
													<div class="table-responsive">
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Value</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>${pre_date_0}</td>
																	<td>${pre_reading_0}</td>
																</tr>
																<tr>
																	<td>${pre_date_1}</td>
																	<td>${pre_reading_1}</td>
																</tr>
																<tr>
																	<td>${pre_date_2}</td>
																	<td>${pre_reading_2}</td>
																</tr>
																<tr>
																	<td>${pre_date_3}</td>
																	<td>${pre_reading_3}</td>
																</tr>
																<tr>
																	<td>${pre_date_4}</td>
																	<td>${pre_reading_4}</td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- /.table-responsive -->
												</div>
												<!-- /.panel-body -->
											</div>
											<!-- /.panel -->
										</div>
									</div>
									
								</div>
								
								<div class="tab-pane fade" id="retina">
									<br>
									<div class="row">
										<div class="col-lg-4">
											<div class="panel panel-default">
												<div class="panel-heading">Retina thickness Readings</div>
												<!-- /.panel-heading -->
												<div class="panel-body">
													<div class="table-responsive">
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Value</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>${pre_date_0}</td>
																	<td>${pre_reading_0}</td>
																</tr>
																<tr>
																	<td>${pre_date_1}</td>
																	<td>${pre_reading_1}</td>
																</tr>
																<tr>
																	<td>${pre_date_2}</td>
																	<td>${pre_reading_2}</td>
																</tr>
																<tr>
																	<td>${pre_date_3}</td>
																	<td>${pre_reading_3}</td>
																</tr>
																<tr>
																	<td>${pre_date_4}</td>
																	<td>${pre_reading_4}</td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- /.table-responsive -->
												</div>
												<!-- /.panel-body -->
											</div>
											<!-- /.panel -->
										</div>
									</div>
									
								</div>
								
								<div class="tab-pane fade" id="heart">
									<br>
									<div class="row">
										<div class="col-lg-4">
											<div class="panel panel-default">
												<div class="panel-heading">ECG Readings</div>
												<!-- /.panel-heading -->
												<div class="panel-body">
													<div class="table-responsive">
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Value</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>${pre_date_0}</td>
																	<td>${pre_reading_0}</td>
																</tr>
																<tr>
																	<td>${pre_date_1}</td>
																	<td>${pre_reading_1}</td>
																</tr>
																<tr>
																	<td>${pre_date_2}</td>
																	<td>${pre_reading_2}</td>
																</tr>
																<tr>
																	<td>${pre_date_3}</td>
																	<td>${pre_reading_3}</td>
																</tr>
																<tr>
																	<td>${pre_date_4}</td>
																	<td>${pre_reading_4}</td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- /.table-responsive -->
												</div>
												<!-- /.panel-body -->
											</div>
											<!-- /.panel -->
										</div>
										
										<div class="col-lg-4">
											<div class="panel panel-default">
												<div class="panel-heading">Echo Readings</div>
												<!-- /.panel-heading -->
												<div class="panel-body">
													<div class="table-responsive">
														<table class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Date</th>
																	<th>Value</th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>${pre_date_0}</td>
																	<td>${pre_reading_0}</td>
																</tr>
																<tr>
																	<td>${pre_date_1}</td>
																	<td>${pre_reading_1}</td>
																</tr>
																<tr>
																	<td>${pre_date_2}</td>
																	<td>${pre_reading_2}</td>
																</tr>
																<tr>
																	<td>${pre_date_3}</td>
																	<td>${pre_reading_3}</td>
																</tr>
																<tr>
																	<td>${pre_date_4}</td>
																	<td>${pre_reading_4}</td>
																</tr>
															</tbody>
														</table>
													</div>
													<!-- /.table-responsive -->
												</div>
												<!-- /.panel-body -->
											</div>
											<!-- /.panel -->
										</div>
									</div>
									
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Diet & Lifestyle Plan</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4">
								<div class="panel panel-default">
									<div class="panel-heading">Food styling (each day)</div>
									<!-- /.panel-heading -->
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table table-striped table-bordered">
												<thead>
													<tr>
														<th>Food Item</th>
														<th>intake (in grams)</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Fat</td>
														<td>150</td>
													</tr>
													<tr>
														<td>Vitamin-A</td>
														<td>20</td>
													</tr>
													<tr>
														<td>Proteins</td>
														<td>300</td>
													</tr>
													<tr>
														<td>Sodium</td>
														<td>25</td>
													</tr>
													<tr>
														<td>Eggs</td>
														<td>4 nos.</td>
													</tr>
												</tbody>
											</table>
										</div>
										<!-- /.table-responsive -->
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel -->
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-success">
					<div class="panel-heading">Recommended Lab Tests Plan</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-8">
								<div class="panel panel-default">
									<div class="panel-heading">Lab test Plan</div>
									<!-- /.panel-heading -->
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table table-striped table-bordered">
												<thead>
													<tr>
														<th>Test</th>
														<th>Body Part</th>
														<th>Frequency</th>
														<th>Last done</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Lipid Profile</td>
														<td>Liver</td>
														<td>Once a month</td>
														<td>2014-08-19</td>
													</tr>
													<tr>
														<td>LSGT Profile</td>
														<td>Kidney</td>
														<td>Once every 3 months</td>
														<td>2014-07-23</td>
													</tr>
													<tr>
														<td>Echo</td>
														<td>Heart</td>
														<td>Once every 6 months</td>
														<td>2014-08-11</td>
													</tr>
													<tr>
														<td>Urine Profile</td>
														<td>Kidney</td>
														<td>Once every 2 weeks</td>
														<td>2014-08-29</td>
													</tr>
													<tr>
														<td>Thyroid Profile</td>
														<td>Thyroid</td>
														<td>Once a year</td>
														<td>2013-12-19</td>
													</tr>
												</tbody>
											</table>
										</div>
										<!-- /.table-responsive -->
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel -->
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery Version 1.11.0 -->
	<script src="../js/jquery-1.11.0.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="../js/plugins/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="../js/plugins/morris/raphael.min.js"></script>
	<script src="../js/plugins/morris/morris.min.js"></script>
	<script src="../js/plugins/morris/morris-data.js"></script>
	
	<script src="../js/plugins/flot/jquery.flot.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="../js/sb-admin-2.js"></script>

</body>

</html>
