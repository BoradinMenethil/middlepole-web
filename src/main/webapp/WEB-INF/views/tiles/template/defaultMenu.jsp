<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!--%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%-->
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header"></li>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>
<script> $(document).ready(function(){  try{ var context = "${pageContext.request.contextPath}/page/"; 
var menuId = window.location.pathname.replace(context, ""); var menuObj = $("#" + menuId);  $(menuObj).addClass('active'); $(menuObj).closest('ul').show(); $(menuObj).closest('ul').closest('li').closest('ul').show(); $(menuObj).closest('ul').closest('li').closest('ul').closest('li').addClass('active'); $(menuObj).closest('ul').closest('li').addClass('active'); } catch(e){ //catch and just suppress error }   }); </script>