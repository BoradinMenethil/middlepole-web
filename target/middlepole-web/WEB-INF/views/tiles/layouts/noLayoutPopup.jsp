<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<!-- This is a starter template page. Use this page to start your new project from scratch. This page gets rid of all links and provides the needed markup only. -->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>def ttr</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/cdnjs/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/cdnjs/css/ionicons.min.css">
<!-- daterange picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/daterangepicker/daterangepicker.css">
<!-- bootstrap datepicker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/datepicker/datepicker3.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/iCheck/all.css">
<!-- Bootstrap Color Picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/colorpicker/bootstrap-colorpicker.min.css">
<!-- Bootstrap time Picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/timepicker/bootstrap-timepicker.min.css">
<!-- Select2 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/select2/select2.min.css">
<!-- Chosen -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/chosen/chosen.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/dist/css/skins/_all-skins.min.css">
<!-- DataTables -->
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/datatables/media/css/jquery.dataTables.min.css"> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/datatables/jquery.dataTables.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/moment/daterangepicker.min.css">
<!-- Export button css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/css/buttons.dataTables.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/css/buttons.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/css/buttons.bootstrap4.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/css/buttons.dataTables.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/css/buttons.jqueryui.css">
<style>
.dataTables_wrapper {
	font-family: tahoma;
	font-size: 11px;
	position: relative;
	clear: both;
	*zoom: 1;
	zoom: 1;
}
</style>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]> <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script> <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> <![endif]-->
<script
	src="${pageContext.request.contextPath}/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/jQueryUI/jquery-ui.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script
	src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<!-- jQuery 2.2.3 -->
<!-- date-range-picker -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/moment/moment.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/moment/moment-with-locales.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Chosen -->
<script
	src="${pageContext.request.contextPath}/static/plugins/chosen/chosen.jquery.min.js"></script>
<!-- Chosen -->
<script
	src="${pageContext.request.contextPath}/static/plugins/chosen/chosen.proto.min.js"></script>
<!-- Select2 -->
<script
	src="${pageContext.request.contextPath}/static/plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script
	src="${pageContext.request.contextPath}/static/plugins/input-mask/jquery.inputmask.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- bootstrap datepicker -->
<script
	src="${pageContext.request.contextPath}/static/plugins/datepicker/bootstrap-datepicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jQuery/jquery.daterangepicker.min.js"></script>
<!-- bootstrap color picker -->
<script
	src="${pageContext.request.contextPath}/static/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script
	src="${pageContext.request.contextPath}/static/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll 1.3.0 -->
<script
	src="${pageContext.request.contextPath}/static/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script
	src="${pageContext.request.contextPath}/static/plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script
	src="${pageContext.request.contextPath}/static/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script
	src="${pageContext.request.contextPath}/static/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/static/dist/js/demo.js"></script>
<!-- Page script -->
<!-- Export button scripts -->
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/media/js/jszip.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/media/js/pdfmake.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/media/js/vfs_fonts.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/js/dataTables.buttons.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/js/buttons.bootstrap.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/js/buttons.bootstrap4.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/js/buttons.flash.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/js/buttons.html5.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/js/buttons.jqueryui.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/datatables/extensions/Buttons/js/buttons.print.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/chartjs/Chart.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/bootbox/bootbox.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/plugins/jQuery/jquery.i18n.properties.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/bootbox/bootbox.js"></script>
</head>
<!-- BODY TAG OPTIONS: ================= Apply one or more of the following classes to get the desired effect |---------------------------------------------------------| | SKINS         | skin-blue                               | |               | skin-black                              | |               | skin-purple                             | |               | skin-yellow                             | |               | skin-red                                | |               | skin-green                              | |---------------------------------------------------------| |LAYOUT OPTIONS | fixed                                   | |               | layout-boxed                            | |               | layout-top-nav                          | |               | sidebar-collapse                        | |               | sidebar-mini                            | |---------------------------------------------------------| -->
<body>
	<div class="wrapper">
		<!-- Content Wrapper. Contains page content -->
		<div>
			<!-- Main content -->
			<section class="content">
				<tiles:insertAttribute name="body" />
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	</div>
	<!-- ./wrapper -->
	<script type="text/javascript"> var waitingDialog = waitingDialog || (function ($) { 'use strict';  // Creating modal dialog's DOM var $dialog = $( '<div class="modal fade" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true" style="padding-top:15%; overflow-y:visible;">' + '<div class="modal-dialog modal-m">' + '<div class="modal-content">' + '<div class="modal-header"><h4 style="margin:0;"></h4></div>' + '<div class="modal-body">' + '<div class="progress progress-striped active" style="margin-bottom:0;"><div class="progress-bar" style="width: 100%"></div></div>' + '</div>' + '</div></div></div>');  return { /** * Opens our dialog * @param message Custom message * @param options Custom options: *                                                         options.dialogSize - bootstrap postfix for dialog size, e.g. "sm", "m"; *                                                options.progressType - bootstrap postfix for progress bar type, e.g. "success", "warning". */ show: function (message, options) { // Assigning defaults if (typeof options === 'undefined') { options = {}; } if (typeof message === 'undefined') { message = 'Loading'; } var settings = $.extend({ dialogSize: 'm', progressType: '', onHide: null // This callback runs after the dialog was hidden }, options);  // Configuring dialog $dialog.find('.modal-dialog').attr('class', 'modal-dialog').addClass('modal-' + settings.dialogSize); $dialog.find('.progress-bar').attr('class', 'progress-bar'); if (settings.progressType) { $dialog.find('.progress-bar').addClass('progress-bar-' + settings.progressType); } $dialog.find('h4').text(message); // Adding callbacks if (typeof settings.onHide === 'function') { $dialog.off('hidden.bs.modal').on('hidden.bs.modal', function (e) { settings.onHide.call($dialog); }); } // Opening dialog $dialog.modal(); }, /** * Closes dialog */ hide: function () { $dialog.modal('hide'); } };  })(jQuery);    /* $(document).ready(function () {  $(document).ajaxError(function(e,jqXHR,ajaxSettings,thrownError) { alert(jqXHR.status)  if(jqXHR.status == '302'){ window.location = '${pageContext.request.contextPath}/login'; } }) }); */  function requiredCheck(param, messageText) { if(!param) { //bootbox.alert('<b><span><spring:message code="label.requiredField"/>:</span></b> ' + messageText, 'dd'); bootbox.dialog({   message: '<b><span><spring:message code="label.requiredField"/>:</span></b> ' + messageText,   title: "",   buttons: {     danger: {       label: '<spring:message code="label.ok"/>',       className: "btn-danger",       callback: function() {     }     }   } }); return true; } return false; }  function getSystemLocale() { var systemLocale ='<%=request.getLocale()%>'; return systemLocale; }  /* function getResource(param){ jQuery.i18n.properties({ name:'JS_Messages', path: '${pageContext.request.contextPath}/static/', mode:'both', language:getSystemLocale(), callback: function() { param = jQuery.i18n.prop(param); } }); return param; } */    </script>
</body>
</html>