<!--%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %-->
<!-- Logo -->
<a href="${pageContext.request.contextPath}/" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
	<!-- logo for regular state and mobile devices --> <span
	class="logo-lg"><img
		src="${pageContext.request.contextPath}/static/img/def.png"
		height="45" width="140"> ttr</span>
</a>
<!-- Header Navbar: style can be found in header.less -->
<nav class="navbar navbar-static-top">
	<div class="col-md-9">
		<a href="?lang=en" id="langSwitch" class="label label-default">English</a>
	</div>
	<div class="col-md-3">
		<span class="pull-right" style="color: white;"><dt>
				<security:authentication property="principal" />
				<a href="${pageContext.request.contextPath}/logout" title="Logout"><i
					class="fa fa-fw fa-sign-out" style="color: black;"></i></a>
			</dt></span>
	</div>
</nav>
<script>
	$(document).ready(function() {
		var lng = '${pageContext.response.locale}';
		if (lng == 'en') {
			$("#langSwitch").attr("href", "?lang=tr");
			$("#langSwitch").text("Türkçe");
		}
	});
</script>