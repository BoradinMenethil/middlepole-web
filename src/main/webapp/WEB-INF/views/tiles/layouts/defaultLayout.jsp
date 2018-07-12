<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page import="java.net.InetAddress"%>
<!--  <b>InetAddress.getLocalHost().getHostName()%></b>  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>welcome to middlepole web application</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->

<style>
.dataTables_wrapper {
	font-family: tahoma;
	font-size: 11px;
	position: relative;
	clear: both;
	*zoom: 1;
	zoom: 1;
}

div.dataTables_processing {
	z-index: 1;
}

.dual-list .list-group {
	margin-top: 8px;
}

.list-left li, .list-right li {
	cursor: pointer;
}

.list-arrows {
	padding-top: 100px;
}

.list-arrows button {
	margin-bottom: 20px;
}
</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]> <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script> <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> <![endif]-->

</head>
<!-- BODY TAG OPTIONS: ================= Apply one or more of the following classes to get the desired effect |---------------------------------------------------------| | SKINS         | skin-blue                               | |               | skin-black                              | |               | skin-purple                             | |               | skin-yellow                             | |               | skin-red                                | |               | skin-green                              | |---------------------------------------------------------| |LAYOUT OPTIONS | fixed                                   | |               | layout-boxed                            | |               | layout-top-nav                          | |               | sidebar-collapse                        | |               | sidebar-mini                            | |---------------------------------------------------------| -->
<body class="hold-transition skin-yellow sidebar-mini">
	<div class="wrapper">
		<!-- Main Header -->
		<header class="main-header">
			<tiles:insertAttribute name="header" />
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<!-- /.sidebar -->
		<tiles:insertAttribute name="menu" />
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Main content -->
			<section class="content">
				<tiles:insertAttribute name="body" />
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="pull-right hidden-xs">
				v0.0.0
				<!--   <b><=InetAddress.getLocalHost().getHostName()%></b> -->
			</div>
			<!-- Default to the left request. InetAddress. -->
			<strong>Copyright &copy; 2018  <a href="#"></a></strong>
		</footer>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	<!-- REQUIRED JS SCRIPTS -->
	<!-- Page script -->
	</body>
</html>