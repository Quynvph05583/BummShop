<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8" />
<title>BummShop</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<base href="/">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/admin/layout/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/admin/layout/css/login.css">
<script
	src="${pageContext.request.contextPath}/assets/admin/layout/scrips/jquery-1.11.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/admin/layout/scrips/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}assets/admin/layout/scrips/login.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<!--
    you can substitue the span of reauth email for a input with the email and
    include the remember me checkbox
    -->
<body>
	<div class="container">
		<div class="card card-container">
		<a href="${pageContext.request.contextPath}/"
				class="back-home"> <spring:message
					code="label.back.home" />
			</a>
			<h6 class="register-Notification">${message}</h6>
			<p id="profile-name" class="profile-name-card">
				<spring:message code="label.login" />
			</p>
			<form action="${pageContext.request.contextPath}/login" method="POST"
				class="form-signin">
				<span id="reauth-email" class="reauth-email"></span> <input
					type="text" id="inputEmail" name="username" class="form-control"
					placeholder="<spring:message
					code="label.placeholder.username" />" required autofocus> <input
					type="password" id="inputPassword" name="password"
					class="form-control" placeholder="<spring:message
					code="label.placeholder.password" />" required autofocus>
				<div id="remember" class="checkbox">
					<label> <input type="checkbox" value="remember-me">
						<spring:message code="label.remember" />
					</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block btn-signin"
					type="submit">
					<spring:message code="label.sign" />
				</button>
			</form>
			<!-- /form -->
			<a href="#" class="forgot-password"> <spring:message
					code="label.changepassword" />
			</a> <a href="${pageContext.request.contextPath}/register"
				class="text-create-Account"> <spring:message
					code="label.createaccount" />
			</a>
		</div>
		<!-- /card-container -->
	</div>
	<!-- /container -->
</body>
</html>