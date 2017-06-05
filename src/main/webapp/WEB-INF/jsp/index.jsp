<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html>
<html ng-app="app">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Koulu</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet"  type="text/css" href="static/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet"   type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
     <!-- Ionicons -->
    <link rel="stylesheet"  type="text/css" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet"   type="text/css" href="static/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="static/dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="static/plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="static/plugins/morris/morris.css">
     <!-- jvectormap -->
    <link rel="stylesheet" href="static/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="static/plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="static/plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/angularjs-toaster/0.4.16/toaster.min.css" rel="stylesheet" />
    <link href="static/js/angular/veasy-table.min.css" rel="stylesheet" type="text/css"/>
	<link href="static/dist/css/angular-block-ui.css" rel="stylesheet" type="text/css"/>
<!--     <link href="static/bootstrap/css/loading-bar.css"  type="text/css" rel="stylesheet" /> -->

    <!-- DataTables -->
    <link rel="stylesheet" href="static/plugins/datatables/dataTables.bootstrap.css">
    
</head>
  <body ng-controller="sidebarController" class="skin-green sidebar-mini" sidebar-directive="state">

    

	  <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a href="index2.html" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>A</b>LT</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>Koulu</b></span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a  class="sidebar-toggle"  ng-click="toggleState()" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
               
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>${pageContext.request.userPrincipal.name}</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- search form -->
                <form action="#" method="get" class="sidebar-form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </form>
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <div ng-include="'static/app/Menu/menu.html'"></div>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
           
     	 <div ng-include="'static/app/Shared/base.html'"></div>
			 

        </div><!-- /.content-wrapper -->
        <footer class="main-footer" >
            <div class="pull-right hidden-xs">
                <b>Version</b> 2.3.0
            </div>
            <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
        </footer>
    </div><!-- ./wrapper -->
	
     <!-- jQuery 2.1.4 -->
    <script src="static/plugins/jQuery/jQuery-2.1.4.min.js"></script>

    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    
        <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="static/bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    
    <!-- Sparkline -->
    <script src="static/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="static/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="static/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="static/plugins/knob/jquery.knob.js"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="static/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="static/plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="static/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="static/dist/js/app.min.js"></script>
	<!-- DataTable -->
	<script src="static/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
	<script src="static/plugins/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
	
	<script src="static/plugins/datatables/dataTables.bootstrap.min.js"></script>
	
    <!-- AdminLTE for demo purposes -->
    <script src="static/dist/js/demo.js"></script>
	
	<script type="text/javascript" src="static/js/angular/angular.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/angular-resource/1.5.9/angular-resource.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.8/angular-ui-router.min.js"></script>
	<script type="text/javascript" src="static/js/angular/angular-block-ui.min.js">
	</script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.0/angular-route.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/angular-datatables/0.5.5/angular-datatables.min.js"></script>
	<script src="static/js/angular/angular-flash.js" type="text/javascript"></script>
	<script src="static/js/angular/ui-bootstrap.min.js" type="text/javascript"></script>
	<script src="static/js/angular/ui-bootstrap-tpls.min.js" type="text/javascript"></script>
	<script src="static/js/angular/angular-translate.min.js" type="text/javascript"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/angularjs-toaster/1.2.0/toaster.min.js"></script>
	    
	<script type="text/javascript" src="static/app/app.js"></script>
	
	<script type="text/javascript" src="static/app/Menu/controller/sidebar.controller.js"></script>
	<script src="static/js/Utility/modal.controller.js" type="text/javascript"></script>
	<script type="text/javascript" src="static/app/Type-Ocorrency/List/type-ocorrency.list.controller.js"></script>
	<script type="text/javascript" src="static/app/Type-Ocorrency/Form/type-ocorrency.form.controller.js"></script>
	<script type="text/javascript" src="static/app/Type-Ocorrency/type-ocorrency.service.js"></script>
	<script type="text/javascript" src="static/app/Type-Ocorrency/type-ocorrency.route.js"></script>
	
	<script src="static/js/Utility/grid.Service.js" type="text/javascript"></script>
	<script type="text/javascript" src="static/js/Utility/alertService.js"></script>
	<script type="text/javascript" src="static/js/Utility/UtilityService.js"></script>
	<script src="static/js/Utility/flashService.js" type="text/javascript"></script>
	<script type="text/javascript" src="static/js/Utility/errorInterceptor.js">	</script>
    
    <script src="static/js/directive/directive.js"></script>  
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-sanitize/1.6.0/angular-sanitize.min.js"></script>
	<script type="text/javascript" src="static/js/angular/veasy-table-tpls.min.js"></script>
	<script type="text/javascript" src="static/js/angular/veasy-table.min.js"></script>
	
	
  </body>
</html>
