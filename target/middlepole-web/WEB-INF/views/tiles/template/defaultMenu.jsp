<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!--%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%-->
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header"></li>
			<security:authorize
				access="hasRole('METER_DATA') or hasRole('METER_DATA_MULTIPLE')">
				<li class="treeview"><a href="#"> <i
						class="fa fa-calculator"></i> <spring:message
							code="label.meter_data" /> <span class="pull-right-container">
							<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu" style="display: none;">
						<security:authorize access="hasRole('METER_DATA')">
							<li id="meterDataPack"><a
								href="${pageContext.request.contextPath}/page/meterDataPack"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.single" /></a></li>
						</security:authorize>
						<security:authorize access="hasRole('METER_DATA_MULTIPLE')">
							<li id="meterDataMultipleBase"><a
								href="${pageContext.request.contextPath}/page/meterDataMultipleBase"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.multi" /></a></li>
						</security:authorize>
					</ul></li>
			</security:authorize>
			<security:authorize
				access="hasRole('EYTSEYT') or hasRole('INSERT_PARAMETER')">
				<li class="treeview"><a href="#"> <i class="fa fa-sun-o"></i>
						<spring:message code="label.lightingDataPage" /> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu" style="display: none;">
						<security:authorize access="hasRole('EYTSEYT')">
							<li id="lightingData"><a
								href="${pageContext.request.contextPath}/page/lightingData"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.excel.upload.eytseyt" /></a></li>
						</security:authorize>
						<security:authorize access="hasRole('INSERT_PARAMETER')">
							<li id="insertParameter"><a
								href="${pageContext.request.contextPath}/page/insertParameter"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.insertParameterPage" /></a></li>
						</security:authorize>
					</ul></li>
			</security:authorize>
			<security:authorize
				access="hasRole('PUSH_OSF') or hasRole('OSF_REPORT')">
				<li class="treeview"><a href="#"> <i
						class="fa fa-tachometer"></i> OSF <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu" style="display: none;">
						<security:authorize access="hasRole('PUSH_OSF')">
							<li id="sendOsf"><a
								href="${pageContext.request.contextPath}/page/sendOsf"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.send" /></a></li>
						</security:authorize>
						<security:authorize access="hasRole('OSF_REPORT')">
							<li id="osfReport"><a
								href="${pageContext.request.contextPath}/page/osfReport"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.response" /> <spring:message code="label.report" /></a></li>
						</security:authorize>
						<security:authorize access="hasRole('OSF_REPORT')">
							<li id="osfLu"><a
								href="${pageContext.request.contextPath}/page/osfLu"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.osfLu" /></a></li>
						</security:authorize>
					</ul></li>
			</security:authorize>
			<security:authorize
				access="hasRole('BATCH_REPORTS') or hasRole('HEADEND_DEVICE_REPORT')">
				<li class="treeview"><a href="#"> <i class="fa fa-book"></i>
						<spring:message code="label.reports" /> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu" style="display: none;">
						<security:authorize access="hasRole('BATCH_REPORTS')">
							<li id="batchReports"><a
								href="${pageContext.request.contextPath}/page/batchReports"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.batch.reports" /></a></li>
						</security:authorize>
						<security:authorize access="hasRole('HEADEND_DEVICE_REPORT')">
							<li id="headendDeviceReport"><a
								href="${pageContext.request.contextPath}/page/headendDeviceReport"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.headendDeviceReport" /></a></li>
						</security:authorize>
					</ul></li>
			</security:authorize>
			<security:authorize
				access="hasRole('USER_LIST') or hasRole('NEW_USER')">
				<li class="treeview"><a href="#"> <i class="fa fa-user"></i>
						<spring:message code="label.userAccounts" /> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu" id="userAccounts" style="display: none;">
						<security:authorize access="hasRole('USER_LIST')">
							<li id="userInfo"><a
								href="${pageContext.request.contextPath}/page/userInfo"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.userList" /></a></li>
						</security:authorize>
						<security:authorize access="hasRole('NEW_USER')">
							<li id="newUser"><a
								href="${pageContext.request.contextPath}/page/newUser"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.newUser" /></a></li>
						</security:authorize>
						<li id="userDetail" style="display: none;" />
					</ul></li>
			</security:authorize>
			<security:authorize
				access="hasRole('JOB_LOG') or hasRole('ACCESS_LOG') or hasRole('ROLE_LIST') or hasRole('NEW_ROLE')">
				<li class="treeview"><a href="#"> <i class="fa fa-wrench"></i>
						<spring:message code="label.admin" /> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu" id="admin" style="display: none;">
						<security:authorize access="hasRole('JOB_LOG')">
							<li id="jobLog"><a
								href="${pageContext.request.contextPath}/page/jobLog"><i
									class="fa fa-fw fa-genderless text-aqua"></i> Job Log</a></li>
						</security:authorize>
						<security:authorize access="hasRole('ACCESS_LOG')">
							<li id="accessLog"><a
								href="${pageContext.request.contextPath}/page/accessLog"><i
									class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
										code="label.accessLog" /></a></li>
						</security:authorize>
						<security:authorize
							access="hasRole('ROLE_LIST') or hasRole('NEW_ROLE')">
							<li class="treeview"><a href="#"> <i class="fa fa-key"></i>
									<spring:message code="label.role" /> <span
									class="pull-right-container"> <i
										class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
								<ul class="treeview-menu" id="roleAdmin" style="display: none;">
									<security:authorize access="hasRole('ROLE_LIST')">
										<li id="roleList"><a
											href="${pageContext.request.contextPath}/page/roleList"><i
												class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
													code="label.role" /> List</a></li>
									</security:authorize>
									<security:authorize access="hasRole('NEW_ROLE')">
										<li id="newRole"><a
											href="${pageContext.request.contextPath}/page/newRole"><i
												class="fa fa-fw fa-genderless text-aqua"></i> <spring:message
													code="label.new" /> <spring:message code="label.role" /></a></li>
									</security:authorize>
									<li id="roleDetail" style="display: none;" />
								</ul></li>
						</security:authorize>
					</ul></li>
			</security:authorize>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>
<script> $(document).ready(function(){  try{ var context = "${pageContext.request.contextPath}/page/"; 
var menuId = window.location.pathname.replace(context, ""); var menuObj = $("#" + menuId);  $(menuObj).addClass('active'); $(menuObj).closest('ul').show(); $(menuObj).closest('ul').closest('li').closest('ul').show(); $(menuObj).closest('ul').closest('li').closest('ul').closest('li').addClass('active'); $(menuObj).closest('ul').closest('li').addClass('active'); } catch(e){ //catch and just suppress error }   }); </script>