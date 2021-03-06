<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Add Prescription | Kronica</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	<script>
	function fetchUsers(){
	
	    $.ajax({
	        url: './loadUsers',
	        dataType: 'json',
	        success: function (users) {

	        	var str = "<select id=\"currentUsers\" class=\"form-control\">";
	        	if (users.users && users.users.length > 0){
        		  for (var i = 0; i < users.users.length; i++){
        			  var user = users.users[i];

        			  str += "<option>" + user.first_name + " " + user.last_name + " (" + user.uid + ")</option>";
        	      }
	        	}
	        	else{
		        	str += "<option>No patients found</option>";
		        }
	        	str += "</select>";

	        	document.getElementById("userList").innerHTML = str;
	        }
	    });
	};

	function selectCurrentUser(){
		var userValue = document.getElementById('currentUsers').value;

	    var res = userValue.split("(");
	    res = res[1].split(")");
		document.getElementById("currentUserFormField").value = res[0];
	};
	</script>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/HealthManager">Kronica</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
<!--                 <li class="dropdown"> -->
<!--                     <a class="dropdown-toggle" data-toggle="dropdown" href="#"> -->
<!--                         <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i> -->
<!--                     </a> -->
<!--                     <ul class="dropdown-menu dropdown-messages"> -->
<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <div> -->
<!--                                     <strong>John Smith</strong> -->
<!--                                     <span class="pull-right text-muted"> -->
<!--                                         <em>Yesterday</em> -->
<!--                                     </span> -->
<!--                                 </div> -->
<!--                                 <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="divider"></li> -->
<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <div> -->
<!--                                     <strong>John Smith</strong> -->
<!--                                     <span class="pull-right text-muted"> -->
<!--                                         <em>Yesterday</em> -->
<!--                                     </span> -->
<!--                                 </div> -->
<!--                                 <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="divider"></li> -->
<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <div> -->
<!--                                     <strong>John Smith</strong> -->
<!--                                     <span class="pull-right text-muted"> -->
<!--                                         <em>Yesterday</em> -->
<!--                                     </span> -->
<!--                                 </div> -->
<!--                                 <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="divider"></li> -->
<!--                         <li> -->
<!--                             <a class="text-center" href="#"> -->
<!--                                 <strong>Read All Messages</strong> -->
<!--                                 <i class="fa fa-angle-right"></i> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                     /.dropdown-messages -->
<!--                 </li> -->
<!--                 /.dropdown -->
<!--                 <li class="dropdown"> -->
<!--                     <a class="dropdown-toggle" data-toggle="dropdown" href="#"> -->
<!--                         <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i> -->
<!--                     </a> -->
<!--                     <ul class="dropdown-menu dropdown-tasks"> -->
<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <div> -->
<!--                                     <p> -->
<!--                                         <strong>Task 1</strong> -->
<!--                                         <span class="pull-right text-muted">40% Complete</span> -->
<!--                                     </p> -->
<!--                                     <div class="progress progress-striped active"> -->
<!--                                         <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"> -->
<!--                                             <span class="sr-only">40% Complete (success)</span> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="divider"></li> -->
<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <div> -->
<!--                                     <p> -->
<!--                                         <strong>Task 2</strong> -->
<!--                                         <span class="pull-right text-muted">20% Complete</span> -->
<!--                                     </p> -->
<!--                                     <div class="progress progress-striped active"> -->
<!--                                         <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%"> -->
<!--                                             <span class="sr-only">20% Complete</span> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="divider"></li> -->
<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <div> -->
<!--                                     <p> -->
<!--                                         <strong>Task 3</strong> -->
<!--                                         <span class="pull-right text-muted">60% Complete</span> -->
<!--                                     </p> -->
<!--                                     <div class="progress progress-striped active"> -->
<!--                                         <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"> -->
<!--                                             <span class="sr-only">60% Complete (warning)</span> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="divider"></li> -->
<!--                         <li> -->
<!--                             <a href="#"> -->
<!--                                 <div> -->
<!--                                     <p> -->
<!--                                         <strong>Task 4</strong> -->
<!--                                         <span class="pull-right text-muted">80% Complete</span> -->
<!--                                     </p> -->
<!--                                     <div class="progress progress-striped active"> -->
<!--                                         <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%"> -->
<!--                                             <span class="sr-only">80% Complete (danger)</span> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                         <li class="divider"></li> -->
<!--                         <li> -->
<!--                             <a class="text-center" href="#"> -->
<!--                                 <strong>See All Tasks</strong> -->
<!--                                 <i class="fa fa-angle-right"></i> -->
<!--                             </a> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                     /.dropdown-tasks -->
<!--                 </li> -->
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
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
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="/HealthManager/adminDashboard"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
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
                        <li class="active">
                            <a href="/HealthManager/forms"><i class="fa fa-edit fa-fw"></i> Forms<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/HealthManager/forms/addUser">Add User</a>
                                </li>
                                <li>
                                    <a class="active" href="/HealthManager/forms/addPrescription">Add Prescription</a>
                                </li>
                                <li>
                                    <a href="notifications.html">Notifications</a>
                                </li>
                                <li>
                                    <a href="typography.html">Typography</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grid</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
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
<!--                         <li> -->
<!--                             <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a> -->
<!--                             <ul class="nav nav-second-level"> -->
<!--                                 <li> -->
<!--                                     <a href="#">Second Level Item</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#">Second Level Item</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="#">Third Level <span class="fa arrow"></span></a> -->
<!--                                     <ul class="nav nav-third-level"> -->
<!--                                         <li> -->
<!--                                             <a href="#">Third Level Item</a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="#">Third Level Item</a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="#">Third Level Item</a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a href="#">Third Level Item</a> -->
<!--                                         </li> -->
<!--                                     </ul> -->
<!--                                     /.nav-third-level -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                             /.nav-second-level -->
<!--                         </li> -->
<!--                         <li> -->
<!--                             <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a> -->
<!--                             <ul class="nav nav-second-level"> -->
<!--                                 <li> -->
<!--                                     <a href="blank.html">Blank Page</a> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <a href="login.html">Login Page</a> -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                             /.nav-second-level -->
<!--                         </li> -->
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add Precription</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                	<div class="panel panel-default">
                        <div class="panel-heading">
                            Select User
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <label>Choose from list</label>
                                    <div id="userList">
                                    	<select id="currentUsers" class="form-control">
	                                        <option>No Users fetched</option>
	                                    </select>
                                    </div>
                                    <br>
                                    <button class="btn btn-primary" onclick="fetchUsers()">Load Users</button>
                                </div>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Enter Prescription information
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form id="prescription" role="form" method="post" action="newPrescription">
                                        <div class="form-group">
                                            <label>Doctor Name</label>
                                            <input class="form-control" placeholder="eg: Dr. Satnam" name="doctorName" autofocus>
                                        </div>
                                        <div class="form-group">
                                            <label>Clinic/Hospital</label>
                                            <input class="form-control" placeholder="eg: Escorts Institute" name="hospitalName">
                                        </div>
                                        <div class="form-group">
											 <label>Date of issue</label>
											 <input type="date" class="form-control" name="dateOfPrescription">
										</div>
										<div class="form-group">
                                            <label>Symptoms (comma seperated)</label>
                                            <input class="form-control" placeholder="eg: nausea, stomach pain" name="symptoms">
                                        </div>
										<div class="form-group">
                                            <label>Phone Number</label>
                                            <input class="form-control" name="phoneNumber">
                                        </div>
                                        <div class="form-group">
                                            <label>Height (in cms.)</label>
                                            <input class="form-control" name="height">
                                        </div>
                                        <div class="form-group">
                                            <label>Weight (in kg)</label>
                                            <input class="form-control" name="weight">
                                        </div>
                                        <div class="form-group">
                                            <label>Blood Group</label>
                                            <select class="form-control">
                                                <option>A+</option>
                                                <option>A-</option>
                                                <option>B+</option>
                                                <option>B-</option>
                                                <option>AB+</option>
                                                <option>AB-</option>
                                                <option>O+</option>
                                                <option>O-</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                        	<input id="currentUserFormField" hidden="true" name="primaryUserId">
                                        </div>
                                        <button type="submit" class="btn btn-default">Submit Button</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
                                    </form>
                                </div>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
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

    <!-- Custom Theme JavaScript -->
    <script src="../js/sb-admin-2.js"></script>

</body>

</html>
