<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<div class="fix-menu">
	<!-- BEGIN TOP BAR -->
	<div class="pre-header">
		<div class="container">
			<div class="row">
				<!-- BEGIN TOP BAR LEFT PART -->
				<div class="col-md-6 col-sm-6 additional-shop-info">
					<ul class="list-unstyled list-inline pull-left">
						<li><span>Hotline: 0388672560</span><i class="fa fa-phone"></i></li>
						<!-- BEGIN CURRENCIES -->
						<li class="shop-currencies"><a><spring:message
									code="label.menu.usa" /></a>
							</li>
						<!-- END CURRENCIES -->
						<!-- BEGIN LANGS -->
						 <li class="langs-block">
							<div>
								<select class="language-home" id="locales">
									<option value="en">English</option>
									<option value="vi">VN</option>
								</select>
							</div></li>
						
						<!-- END LANGS -->
					</ul>
				</div>
				<!-- END TOP BAR LEFT PART -->
				<!-- BEGIN TOP BAR MENU -->
				<div class="col-md-6 col-sm-6 additional-nav">
					<ul class="list-unstyled list-inline  pull-right margin-ul">
						<c:if test="${currentUser == null}">
							<li><a href="${pageContext.request.contextPath}/login">
									<i class="icon-key"></i><spring:message
									code="label.menu.login" /></a></li>
						</c:if>
						<c:if test="${currentUser != null}">
							<li><a href="${pageContext.request.contextPath}/logout">
									<i class="icon-key"></i><spring:message
									code="label.menu.logout" />
							</a></li>
						</c:if>
						<li><a>${currentUser.username}</a></li>
						<li><a href="${pageContext.request.contextPath}/cart"><i
								class="fa fa-shopping-cart"></i><spring:message
									code="label.menu.cart" /></a></li>
					</ul>
				</div>
				<!-- END TOP BAR MENU -->
			</div>
		</div>
	</div>
	<!-- END TOP BAR -->

	<!-- BEGIN HEADER -->
	<div class="header">
		<div class="container">
			<a href="javascript:void(0);" class="mobi-toggler"><i
				class="fa fa-bars"></i></a>

			<!-- BEGIN NAVIGATION -->
			<div class="header-navigation">
				<ul>
					<li class="dropdown"><a class="dropdown-toggle"
						href="${pageContext.request.contextPath}/home"> <spring:message
									code="label.menu.home" /> </a></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="#" href="#"> <spring:message
									code="label.menu.category" /> </a>
						<ul class="dropdown-menu">

							<li><c:forEach items="${category}" var="category">
									<a
										href="${pageContext.request.contextPath}/listProduct/?category=${category.id}">${category.name}</a>
								</c:forEach></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" data-target="#" href="#"><spring:message
									code="label.menu.news" /></a> <!-- BEGIN DROPDOWN MENU -->
					</li>

				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->
</div>
</html>