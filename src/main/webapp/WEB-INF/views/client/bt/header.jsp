<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<header class="header-v2">
	<!-- Header desktop -->
	<div class="container-menu-desktop trans-03">
		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop p-l-45">

				<!-- Logo desktop -->
				<a href="#" class="logo"> <img
					src="${pageContext.request.contextPath}/assets/new/images/icons/logo-01.png"
					alt="IMG-LOGO">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li class="active-menu"><a
							href="${pageContext.request.contextPath}/home">Home</a></li>

						<li><a href="#">Shop</a>
							<ul class="sub-menu">
								<li><c:forEach items="${category}" var="category">
										<a
											href="${pageContext.request.contextPath}/listProduct/?category=${category.id}">${category.name}</a>
									</c:forEach></li>
							</ul></li>

						<li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>

						<li><a href="${pageContext.request.contextPath}/about">About</a></li>

						<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m h-full">
					<div class="flex-c-m h-full p-r-24">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11">
							<a href="${pageContext.request.contextPath}/login"><i
								class="zmdi zmdi-account"></i></a>
						</div>
					</div>

					<div class="flex-c-m h-full p-l-18 p-r-25 bor5">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11">
							<a href="${pageContext.request.contextPath}/cart"><i
								class="zmdi zmdi-shopping-cart"></i></a>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="index.html"><img
				src="${pageContext.request.contextPath}/assets/new/images/icons/logo-01.png"
				alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
			<div class="flex-c-m h-full p-r-10">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11">
					<a href="${pageContext.request.contextPath}/login"><i
						class="zmdi zmdi-account"></i></a>
				</div>
			</div>

			<div class="flex-c-m h-full p-lr-10 bor5">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11">
					<a href="${pageContext.request.contextPath}/cart"><i
						class="zmdi zmdi-shopping-cart"></i></a>
				</div>
			</div>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="main-menu-m">
			<li><a href="index.html">Home</a> <span
				class="arrow-main-menu-m"> <i class="fa fa-angle-right"
					aria-hidden="true"></i>
			</span></li>

			<li><a href="#">Shop</a>
				<ul class="sub-menu">
					<li><a href="${pageContext.request.contextPath}/skincare">SkinCare</a></li>
					<li><a href="${pageContext.request.contextPath}/bodyskincare">Body
							SkinCare</a></li>
					<li><a href="${pageContext.request.contextPath}/cosmetic">Cosmetic</a></li>
				</ul></li>


			<li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>

			<li><a href="${pageContext.request.contextPath}/about">About</a></li>

			<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
		</ul>
	</div>

</header>
</html>