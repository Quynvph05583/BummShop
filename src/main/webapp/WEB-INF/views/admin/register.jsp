<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
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
	href=" ${pageContext.request.contextPath}/assets/admin/layout/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/admin/layout/css/login.css">
<script
	src="${pageContext.request.contextPath}/assets/admin/layout/scrips/jquery-1.11.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/admin/layout/scrips/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/admin/layout/scrips/login.js"></script>
</head>
<body>
	<div class="container">
		<div class="card card-container">
			<a href="${pageContext.request.contextPath}/login" class="back-home">
				<spring:message code="label.back.home" />
			</a>
			<h6 class="register-Notification">${message}</h6>
			<p id="profile-name" class="profile-name-card">
				<spring:message code="label.titel.register" />
			</p>
			<form action="${pageContext.request.contextPath}/register"
				method="POST" class="form-signin">
				<span id="reauth-email" class="reauth-email"></span> <input
					type="text" name="username" id="inputUsername" required autofocus class="form-control"
					placeholder="<spring:message
					code="label.register.username" />"
					> <input type="password" name="password"
					id="inputPassword" class="form-control"
					placeholder="<spring:message
					code="label.register.password" />"
					required autofocus> <input type="text" id="inputName"
					name="name" class="form-control"
					placeholder="<spring:message
					code="label.register.fullname" />"
					required autofocus>
				<div class="radio-gender">
					<input type="radio" name="gender" value="Nam">
					<spring:message code="label.register.nam" />
					<input class="radio-girl" type="radio" name="gender" value="Nữ">
					<spring:message code="label.register.nu" />
				</div>
				<input type="number" id="inputYearOld" name="age"
					class="form-control"
					placeholder="<spring:message
					code="label.register.yearold" />"
					required autofocus> <input type="text" id="inputSdt"
					name="phone" class="form-control"
					placeholder="<spring:message
					code="label.register.phone" />"
					required autofocus> <input type="text" id="inputAddress"
					name="address" class="form-control"
					placeholder="<spring:message
					code="label.register.address" />"
					required autofocus> <input type="email" id="inputEmail"
					name="email" class="form-control"
					placeholder="<spring:message
					code="label.register.email" />"
					required>
				<button class="btn btn-lg btn-primary btn-block btn-signin"
					type="submit">
					<spring:message code="label.register.create" />
				</button>
			</form>
			<!-- /form -->
		</div>
		<!-- /card-container -->
	</div>
	<!-- /container -->
</body>
</html>