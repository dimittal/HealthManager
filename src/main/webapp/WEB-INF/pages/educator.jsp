<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">

    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/css/plugins/dataTables.bootstrap.css" rel="stylesheet">

</head>
<body>
<div>
	<%@ include file="include/header.jsp" %> 
    <!--BEGIN BACK TO TOP-->
    <a id="totop" href="#"><i class="fa fa-angle-up"></i></a><!--END BACK TO TOP--><!--BEGIN TOPBAR-->
    <div id="header-topbar-option-demo" class="page-header-topbar">
        <%@ include file="include/navigation.html" %> 
        <div id="modal-config" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
                        <h4 class="modal-title">Modal title</h4></div>
                    <div class="modal-body"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend et nisl eget porta. Curabitur elementum sem molestie nisl varius, eget tempus odio molestie. Nunc vehicula sem arcu, eu pulvinar neque cursus ac. Aliquam ultricies lobortis magna et aliquam. Vestibulum egestas eu urna sed ultricies. Nullam pulvinar dolor vitae quam dictum
                        condimentum. Integer a sodales elit, eu pulvinar leo. Nunc nec aliquam nisi, a mollis neque. Ut vel felis quis tellus hendrerit placerat. Vivamus vel nisl non magna feugiat dignissim sed ut nibh. Nulla elementum, est a pretium hendrerit, arcu risus luctus augue, mattis aliquet orci ligula eget massa. Sed ut ultricies felis.</p></div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!--END MODAL CONFIG PORTLET--></div>
    <!--END TOPBAR-->
    <div id="wrapper">
    <!--BEGIN SIDEBAR MENU-->
        <%@ include file="include/navigation2.jsp" %> 

        <!--END CHAT FORM--><!--BEGIN PAGE WRAPPER-->
        <div id="page-wrapper"><!--BEGIN TITLE & BREADCRUMB PAGE-->
            <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                <div class="page-header pull-left">
                    <div class="page-title">Page Header</div>
                </div>
                <div class="btn btn-blue reportrange"><i class="fa fa-calendar"></i>&nbsp;<span></span>&nbsp;report&nbsp;<i class="fa fa-angle-down"></i><input type="hidden" name="datestart"/><input type="hidden" name="endstart"/></div>
                <div class="clearfix"></div>
            </div>
            <!--END TITLE & BREADCRUMB PAGE--><!--BEGIN CONTENT-->
            <div class="page-content">
                    <div class="row">
                        <div>
                            <ul id="myTab" class="nav nav-tabs" role="tablist">
                              <li class="active"><a href="#new_readings" role="tab" data-toggle="tab">New readings</a></li>
                              <li class=""><a href="#flagged_readings" role="tab" data-toggle="tab">Flagged readings</a></li>
                              <li class=""><a href="#reviewed_readings" role="tab" data-toggle="tab">Reveiwed readings</a></li>
                            </ul>

                            <div id="myTabContent" class="tab-content">
                              <div class="tab-pane fade active in" id="new_readings">
                                <div class="panel panel-yellow">
                                    <div class="panel-heading">
                                        Patient readings pending comments:
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover dataTable" id="dataTables-example1">
                                            </table>
                                        </div>
                                    </div>
                                    <!-- /.panel-body -->
                                </div>
                                <!-- /.panel -->
                              </div>
                              <div class="tab-pane fade" id="flagged_readings">
                                <div class="panel panel-yellow">
                                    <div class="panel-heading">
                                        Flagged patient readings pending comments:
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover dataTable" id="dataTables-example2">
                                                <thead>
                                                    <tr>
                                                        <th>Kronica UID</th>
                                                        <th>Name</th>
                                                        <th>Time of reading</th>
                                                        <th>Reason for flagging</th>
                                                        <th>Reading</th>
                                                        <th>Type</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="odd gradeX">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td>Win 95+</td>
                                                        <td>Win 95+</td>
                                                        <td class="center">4</td>
                                                        <td class="center">X</td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 5.0</td>
                                                        <td>Win 95+</td>
                                                        <td>Win 95+</td>
                                                        <td class="center">5</td>
                                                        <td class="center">C</td>
                                                    </tr>
                                                    <tr class="odd gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 5.5</td>
                                                        <td>Win 95+</td>
                                                        <td>Win 95+</td>
                                                        <td class="center">5.5</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="even gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 6</td>
                                                        <td>Win 98+</td>
                                                        <td>Win 95+</td>
                                                        <td class="center">6</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="odd gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 7</td>
                                                        <td>Win XP SP2+</td>
                                                        <td>Win 95+</td>
                                                        <td class="center">7</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="even gradeA">
                                                        <td>Trident</td>
                                                        <td>AOL browser (AOL desktop)</td>
                                                        <td>Win XP</td>
                                                        <td>Win 95+</td>
                                                        <td class="center">6</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- /.panel-body -->
                                </div>
                                <!-- /.panel -->
                              </div>
                              <div class="tab-pane fade" id="reviewed_readings">
                                <div class="panel panel-yellow">
                                    <div class="panel-heading">
                                        Reviewed Patient readings with comments:
                                    </div>
                                    <!-- /.panel-heading -->
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover dataTable" id="dataTables-example3">
                                                <thead>
                                                    <tr>
                                                        <th>Kronica UID</th>
                                                        <th>Name</th>
                                                        <th>Time of reading</th>
                                                        <th>Reading</th>
                                                        <th>Type</th>
                                                        <th>Comments</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="odd gradeX">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 4.0</td>
                                                        <td>Win 95+</td>
                                                        <td class="center">4</td>
                                                        <td class="center">X</td>
                                                        <td>On track!</td>
                                                    </tr>
                                                    <tr class="even gradeC">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 5.0</td>
                                                        <td>Win 95+</td>
                                                        <td class="center">5</td>
                                                        <td class="center">C</td>
                                                        <td>On track!</td>
                                                    </tr>
                                                    <tr class="odd gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 5.5</td>
                                                        <td>Win 95+</td>
                                                        <td class="center">5.5</td>
                                                        <td class="center">A</td>
                                                        <td>On track!</td>
                                                    </tr>
                                                    <tr class="even gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 6</td>
                                                        <td>Win 98+</td>
                                                        <td class="center">6</td>
                                                        <td class="center">A</td>
                                                        <td>On track!</td>
                                                    </tr>
                                                    <tr class="odd gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 7</td>
                                                        <td>Win XP SP2+</td>
                                                        <td class="center">7</td>
                                                        <td class="center">A</td>
                                                        <td>On track!</td>
                                                    </tr>
                                                    <tr class="odd gradeA">
                                                        <td>Trident</td>
                                                        <td>Internet Explorer 7</td>
                                                        <td>Win XP SP2+</td>
                                                        <td class="center">7</td>
                                                        <td class="center">A</td>
                                                        <td>On track1!</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- /.panel-body -->
                                </div>
                                <!-- /.panel -->
                              </div>
                            </div>
                        </div>
                    </div>
                
            </div>
            <!--END CONTENT--><!--BEGIN CONTENT QUICK SIDEBAR-->
            <div class="quick-sidebar">
                <div class="header-quick-sidebar">
                    <ul class="nav nav-tabs nav-justified ul-edit">
                        <li class="active dropdown"><a id="tab-quick-sidebar" href="#" data-toggle="dropdown" class="dropdown-toggle">Change logs
                            &nbsp;<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" aria-labelledby="tab-quick-sidebar" class="dropdown-menu">
                                <li><a href="#tab-version-1-1" tabindex="-1" data-toggle="tab">Version 1.1</a></li>
                                <li><a href="#tab-version-1-2" tabindex="-1" data-toggle="tab">Version 1.2</a></li>
                                <li><a href="#tab-version-2-0" tabindex="-1" data-toggle="tab">Version 2.0</a></li>
                                <li><a href="#tab-version-2-1" tabindex="-1" data-toggle="tab">Version 2.1</a></li>
                                <li class="active"><a href="#tab-version-3-0" tabindex="-1" data-toggle="tab">Version 3.0</a></li>
                            </ul>
                        </li>
                        <li><a href="#tab-hot-features" data-toggle="tab">Hot features</a></li>
                    </ul>
                    <div class="content-quick-sidebar tab-content">
                        <div id="tab-version-1-1" class="tab-pane fade"><h4>Version 1.1 - 04 July 2014</h4>
                            <ul class="list-update list-unstyled">
                                <li><span class='label label-success'>N</span>

                                    <div>Add new: Bordered style</div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Data Grids menu using jPList plugin
                                        <ul class="sub-list-update">
                                            <li>Layout Examples
                                                <ul class="sub-list-update">
                                                    <li>DIVs Layout</li>
                                                    <li>Table Demo1</li>
                                                    <li>Table Demo2</li>
                                                    <li>2 Tables on the Page</li>
                                                    <li>UL/LI</li>
                                                </ul>
                                            </li>
                                            <li>Actions Examples
                                                <ul class="sub-list-update">
                                                    <li>Filters With UL/LI</li>
                                                    <li>Filters With SELECT</li>
                                                    <li>Double Sort</li>
                                                    <li>Deep Linking</li>
                                                    <li>Pagination Only</li>
                                                    <li>Without "Items per Page"</li>
                                                    <li>Hidden Sort</li>
                                                </ul>
                                            </li>
                                            <li>jPList with jQuery UI
                                                <ul class="sub-list-update">
                                                    <li>Ranger Slider</li>
                                                    <li>Date Picker Filter</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: 2 options in timeline page
                                        <ul class="sub-list-update">
                                            <li>One column</li>
                                            <li>Full Responsive</li>
                                        </ul>
                                    </div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: chat form in sidebar and dashboard page</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: checkall in datatable</div>
                                </li>
                                <li><span class='label label-danger'>B</span>

                                    <div>Fix: Minor bug</div>
                                </li>
                            </ul>
                        </div>
                        <div id="tab-version-1-2" class="tab-pane fade"><h4>Version 1.2 - 08 July 2014</h4>
                            <ul class="list-update list-unstyled">
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: 2 new style navigation
                                        <ul class="sub-list-update">
                                            <li>Menu with big icon & flat design</li>
                                            <li>Menu with color transition</li>
                                        </ul>
                                    </div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: jQuery introjs. Introduce tips about this template</div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Set up responsive tabs for pages
                                        <ul class="sub-list-update">
                                            <li>Redesign for tab direction</li>
                                            <li>Mobile & Tablet version for tabs accordion</li>
                                        </ul>
                                    </div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: Improve jquery cookie
                                        <ul class="sub-list-update">
                                            <li>User can make best theme by mix the style and color</li>
                                            <li>Remember user's favourite theme and apply it to all pages</li>
                                        </ul>
                                    </div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: Apply styles(Squared, Rounded, Bordered) for all pages in Datagrid menu</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: Reconstruct menu on layout-horizontal-menu page</div>
                                </li>
                                <li><span class='label label-danger'>B</span>

                                    <div>Fix: bug on layout-header-topbar page</div>
                                </li>
                                <li><span class='label label-danger'>B</span>

                                    <div>Fix: Set up Animation page run on Firefox browser</div>
                                </li>
                            </ul>
                        </div>
                        <div id="tab-version-2-0" class="tab-pane fade"><h4>Version 2.0 - 18 July 2014</h4>
                            <ul class="list-update list-unstyled">
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Update Bootstrap 3.2</div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: DataTalbes
                                        <ul class="sub-list-update">
                                            <li>Using own table template</li>
                                            <li>Filter feature</li>
                                            <li>Sorter</li>
                                            <li>Search</li>
                                            <li>Paging</li>
                                            <li>Edit and Export features are coming soon.</li>
                                        </ul>
                                    </div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Fixed menu featured</div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Introduction part for some pages</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: New effect on search form</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: Badge on collapsed menu</div>
                                </li>
                                <li><span class='label label-danger'>B</span>

                                    <div>Fix: Topbar welcome section on Firefox</div>
                                </li>
                                <li><span class='label label-danger'>B</span>

                                    <div>Fix: Footer animation page on Firefox</div>
                                </li>
                            </ul>
                        </div>
                        <div id="tab-version-2-1" class="tab-pane fade"><h4>Version 2.1 - 23 July 2014</h4>
                            <ul class="list-update list-unstyled">
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Jeditable</div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Table Export
                                        <ul class="sub-list-update">
                                            <li>Type of file support: JSON, XML, SQL, CSV, TXT, Word, Excel, Powerpoint and PDF</li>
                                        </ul>
                                    </div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: User List Page in Extras menu</div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Dropdown Select in UI-Element</div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Advanced News Ticker</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: Sco.message in UI-Element menu</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: Export Tool in Datatables</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: search form style and theme setting style</div>
                                </li>
                                <li><span class='label label-danger'>B</span>

                                    <div>Fix: iCheck in Datatables page</div>
                                </li>
                            </ul>
                        </div>
                        <div id="tab-version-3-0" class="tab-pane fade in active"><h4>Version 3.0 - 28 July 2014</h4>
                            <ul class="list-update list-unstyled">
                                <li><span class='label label-success'>N</span>

                                    <div>Important - Add new: Frontend one page with 16 versions:
                                        <ul class="sub-list-update">
                                            <li>4 versions light style:
                                                <ul class="sub-list-update">
                                                    <li><a href="frontend/one-page.html" target="_blank">Image background</a></li>
                                                    <li><a href="frontend/one-page_2.html" target="_blank">Slider background</a></li>
                                                    <li><a href="frontend/one-page_3.html" target="_blank">Color solid background</a></li>
                                                    <li><a href="frontend/one-page_4.html" target="_blank">Video background</a></li>
                                                </ul>
                                            </li>
                                            <li>4 versions light style with animation:
                                                <ul class="sub-list-update">
                                                    <li><a href="frontend/one-page_animated.html" target="_blank">Image background</a></li>
                                                    <li><a href="frontend/one-page_2_animated.html" target="_blank">Slider background</a></li>
                                                    <li><a href="frontend/one-page_3_animated.html" target="_blank">Color solid background</a></li>
                                                    <li><a href="frontend/one-page_4_animated.html" target="_blank">Video background</a></li>
                                                </ul>
                                            </li>
                                            <li>4 versions dark style:
                                                <ul class="sub-list-update">
                                                    <li><a href="frontend/one-page_dark.html" target="_blank">Image background</a></li>
                                                    <li><a href="frontend/one-page_2_dark.html" target="_blank">Slider background</a></li>
                                                    <li><a href="frontend/one-page_3_dark.html" target="_blank">Color solid background</a></li>
                                                    <li><a href="frontend/one-page_4_dark.html" target="_blank">Video background</a></li>
                                                </ul>
                                            </li>
                                            <li>4 versions dark style with animation:
                                                <ul class="sub-list-update">
                                                    <li><a href="frontend/one-page_animated_dark.html" target="_blank">Image background</a></li>
                                                    <li><a href="frontend/one-page_2_animated_dark.html" target="_blank">Slider background</a></li>
                                                    <li><a href="frontend/one-page_3_animated_dark.html" target="_blank">Color solid background</a></li>
                                                    <li><a href="frontend/one-page_4_animated_dark.html" target="_blank">Video background</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: User List Page in Extras menu</div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Dropdown Select in UI-Element</div>
                                </li>
                                <li><span class='label label-success'>N</span>

                                    <div>Add New: Advanced News Ticker</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: Sco.message in UI-Element menu</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: Export Tool in Datatables</div>
                                </li>
                                <li><span class='label label-info'>U</span>

                                    <div>Upgrade: search form style and theme setting style</div>
                                </li>
                                <li><span class='label label-danger'>B</span>

                                    <div>Fix: iCheck in Datatables page</div>
                                </li>
                            </ul>
                        </div>
                        <div id="tab-hot-features" class="tab-pane fade">
                            <ul class="list-update list-unstyled">
                                <li>+
                                    &nbsp;
                                    3 Admin Themes Included (+more)
                                </li>
                                <li>+
                                    &nbsp;
                                    5 Menu Styles Included (+more)
                                </li>
                                <li>+
                                    &nbsp;
                                    4 Header Styles Included (+more)
                                </li>
                                <li>+
                                    &nbsp;
                                    Unlimited Layout Options
                                </li>
                                <li>+
                                    &nbsp;
                                    Bootstrap 3.2
                                </li>
                                <li>+
                                    &nbsp;<a href="frontend-one-page.html">One Page Parallax</a></li>
                                <li>+
                                    &nbsp;
                                    Full LESS Support
                                </li>
                                <li>+
                                    &nbsp;
                                    100+ Template Pages
                                </li>
                                <li>+
                                    &nbsp;
                                    500+ UI Components
                                </li>
                                <li>+
                                    &nbsp;
                                    Update New Features Weekly
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--END CONTENT QUICK SIDEBAR--></div>
        <!--BEGIN FOOTER-->
        <div id="footer">
            <div class="copyright">2014 © &mu;Admin - Responsive Multi-Style Admin Template</div>
        </div>
        <!--END FOOTER--><!--END PAGE WRAPPER--></div>
        <%@ include file="include/footer.jsp" %> 

    <script src="/js/jquery-1.11.0.js"></script>
    <script src="/js/underscore-min.js"></script>
    <script type="text/javascript" src="/js/json2.js"></script>

    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.0.0/backbone-min.js"></script>
    <script type="text/javascript" src="https://rawgithub.com/powmedia/backbone.bootstrap-modal/master/src/backbone.bootstrap-modal.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {

        // Fetch data from server for the glucose readings
        $.get('/fetchGlucoseData/', function (json_response){
            
            var new_readings = JSON.parse(json_response).new_readings;
            if (new_readings.length > 0){
                var str = '';
                str += "<tbody>";
                for (var i = 0; i < new_readings.length; i++){
                    str += "<tr class=" + ((i+1) % 2 ? 'odd gradeX' : 'even gradeC') + ">"+
                                "<td>" + new_readings[i].uid + "</td>"+
                                "<td>" + new_readings[i].first_name + " " + new_readings[i].last_name + "</td>" +
                                "<td>" + new_readings[i].time_taken+ "</td>"+
                                "<td><a href='#' data-hover='tooltip' onclick='openModal(" + JSON.stringify(new_readings[i]) + ")' data-toggle='modal'>" + new_readings[i].value + "</a></td>" +
                                "<td>" + new_readings[i].reading_type + "</td>"+
                                "</tr>";
                }
                str += "</tbody>";

                var tableHead = "<thead><tr><th>Kronica UID</th><th>Name</th><th>Time of reading</th><th>Reading</th><th>Type</th></tr></thead>";

                document.getElementById('dataTables-example1').innerHTML = tableHead + str;
            }
            else {
                document.getElementById('dataTables-example1').innerHTML = "No New patient data as of now.";
            }

        });

        $('#dataTables-example1').dataTable({
            "lengthMenu": [ 5, 10, 15 ]
        });
        $('#dataTables-example2').dataTable({
            "lengthMenu": [ 5, 10, 15 ]
        });
        $('#dataTables-example3').dataTable({
            "lengthMenu": [ 5, 10, 15 ]
        });

        $("#commentButton").click(function(){
          $.post("/addComment/",
          {
            id: 3,
            commentText: $('#commentText').getText,
            type: 'F'
          },
          function(data,status){
            alert("Data: " + data + "\nStatus: " + status);
          });
        });

        $(document).on("click", ".open-AddCommentDialog", function(){
           console.log('yahoo');
           var uid = $(this).data('uid');
           $("#userName").text( 'Readings from ' + uid );
        });

    });

    function openModal(str){

        var read = eval(str);
        console.log("/fetchHistory/?uid=" + read.uid + '&type=' + read.reading_type);

        $.get("/fetchHistory/?uid=" + read.uid + '&type=' + read.reading_type, function(data,status){

            var readings = Backbone.Model.extend(data);

            console.log('In openmodal');
            var view = new ModalView({model: readings, data: JSON.parse(data)});

            var modal = new Backbone.BootstrapModal({
                content: view,
                title: 'Add comment for ' + read.first_name + ' ' + read.last_name,
                animate: true
            });
            modal.open(function(){

				console.log($('#commentText').value());
            });
        });
    }

    var ModalView = Backbone.View.extend({
        tagName: 'h1',
        template: $('#comment-model-id'),
        initialize: function(options) {
            this.options = options;
            _.bindAll(this, 'render');
        },
        render: function() {

            var new_readings = this.options.data.new_readings;
            
			var row = document.createElement('div');
			$(row).addClass('row');
			$(row).css('font-size', '14px');

			var col = document.createElement('div');
			$(col).addClass('col-lg-5');

			var h5 = document.createElement('h5');
			h5.appendChild(document.createTextNode('Past 5 Readings'));
			var table_responsive = document.createElement('div');
			$(table_responsive).addClass('table_responsive');

            var tbody = document.createElement('tbody');
            
            var thead = document.createElement('thead'); 
            var t = document.createElement('tr');
            var th1 = document.createElement('th');
            th1.appendChild(document.createTextNode('Time taken'));

            var th2 = document.createElement('th');
            th2.appendChild(document.createTextNode('Value'));

            t.appendChild(th1);
            t.appendChild(th2);
            thead.appendChild(t);
            
            for (var i = 0; i < new_readings.length; i++){
                var tr = document.createElement('tr');   
                $(tr).addClass( (i+1) % 2 ? 'odd gradeX' : 'even gradeC');

                var td1 = document.createElement('td');
                var td2 = document.createElement('td');

                var text1 = document.createTextNode(new_readings[i].time_taken);
                var text2 = document.createTextNode(new_readings[i].value);

                td1.appendChild(text1);
                td2.appendChild(text2);
                tr.appendChild(td1);
                tr.appendChild(td2);

                tbody.appendChild(tr);
            }

            var table = document.createElement('table');
            $(table).addClass('table table-striped table-bordered table-hover');
            table.appendChild(thead);
            table.appendChild(tbody);

            table_responsive.appendChild(table);

            col.appendChild(h5);
            col.appendChild(table_responsive);

            row.appendChild(col);

            var col2 = document.createElement('div');
			$(col2).addClass('col-lg-7');

			var h5_1 = document.createElement('h5');
			h5_1.appendChild(document.createTextNode('Actions'));

			var div3 = document.createElement('div');

			var but1 = document.createElement('button');
			$(but1).addClass('btn btn-primary');
			$(but1).click(function() {
				$(div3).html(openTextBox('comment'));				  
			});
			but1.appendChild(document.createTextNode('Add comment'));

			var h4 = document.createTextNode('OR');

			var but2 = document.createElement('button');
			$(but2).addClass('btn btn-primary');
			$(but2).click(function() {
				$(div3).html(openTextBox('flag'));				  
			});
			but2.appendChild(document.createTextNode('Flag'));

			div3.appendChild(but1);
			div3.appendChild(document.createElement('br'));
			div3.appendChild(document.createElement('br'));
			div3.appendChild(h4);
			div3.appendChild(document.createElement('br'));
			div3.appendChild(document.createElement('br'));
			div3.appendChild(but2);
			
			col2.appendChild(h5_1);
			col2.appendChild(div3);
			
			row.appendChild(col2);
			
            this.$el.html(row);
            return this;
        }
    });

    function openTextBox(type){

        if (type === 'comment'){
            return "<textarea id='commentText' style='margin: 0px; height: 224px; width: 300px;' placeholder='Add comments to send to the patient...'></textarea>";
        }
        else if (type === 'flag'){
            return "<textarea id='commentText' style='margin: 0px; height: 224px; width: 300px;' placeholder='Add comments to review later...'></textarea>";
        }
    }
    
    </script>

</div>
</body>
</html>