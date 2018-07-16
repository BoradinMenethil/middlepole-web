<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<script
	src="${pageContext.request.contextPath}/static/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/jQueryUI/jquery-ui.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script
	src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/static/plugins/bootbox/bootbox.js"></script>
<!-- page import="java.net.InetAddress" %> -->
<tiles:insertAttribute name="body" />
<!--  <b><=InetAddress.getLocalHost().getHostName()></b> -->
