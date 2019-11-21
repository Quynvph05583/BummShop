<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
	<div class="page-sidebar navbar-collapse collapse">
		<ul class="page-sidebar-menu " data-keep-expanded="false"
			data-auto-scroll="true" data-slide-speed="200">
			<li class="sidebar-toggler-wrapper">
				<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				<div class="sidebar-toggler"></div> <!-- END SIDEBAR TOGGLER BUTTON -->
			</li>

			<li class="start li-admin"><a href="javascript:;"> <i
					class="icon-home"></i> <span class="title"><spring:message
							code="label.admin" /></span> <span class="arrow open"></span>
			</a>
				<ul class="sub-menu">
					<li><a href="${pageContext.request.contextPath}/admin/admin">
							<i class="icon-user"></i> <spring:message code="label.home" />
					</a></li>
				</ul></li>
			<li class="start"><a href="javascript:;"> <i
					class="icon-user"></i> <span class="title"><spring:message
							code="label.account" /></span> <span class="arrow open"></span>
			</a>
				<ul class="sub-menu">
					<li><a
						href="${pageContext.request.contextPath}/admin/listUser"> <i
							class="icon-user"></i>
						<spring:message code="label.account.list" />
					</a></li>
				</ul></li>
			<li class="start"><a href="javascript:;"> <i
					class="icon-diamond"></i> <span class="title"><spring:message
							code="label.category" /></span> <span class="arrow open"></span>
			</a>
				<ul class="sub-menu">
					<li><a
						href="${pageContext.request.contextPath}/admin/listCategory">
							<i class="icon-diamond"></i>
						<spring:message code="label.category.list" />
					</a></li>
				</ul></li>
			<li class="start"><a href="javascript:;"> <i
					class="icon-handbag"></i> <span class="title"><spring:message
							code="label.product" /></span> <span class="arrow open"></span>
			</a>
				<ul class="sub-menu">
					<li><a
						href="${pageContext.request.contextPath}/admin/listProduct"> <i
							class="icon-handbag"></i> <spring:message
								code="label.product.list" />
					</a></li>
				</ul></li>
			<li class="start"><a href="javascript:;"> <i
					class="icon-basket"></i> <span class="title"><spring:message
							code="label.order" /></span> <span class="arrow open"></span>
			</a>
				<ul class="sub-menu">
					<li><a
						href="${pageContext.request.contextPath}/admin/listOrder"> <i
							class="icon-basket"></i> <spring:message code="label.order.list" />
					</a></li>
				</ul></li>
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
</div>
<!-- END SIDEBAR -->
</html>