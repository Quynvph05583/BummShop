<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<jsp:include page="../common/head.jsp"></jsp:include>
<body
	class="page-header-fixed page-quick-sidebar-over-content page-sidebar-closed-hide-logo page-container-bg-solid">
	<jsp:include page="../common/topMenu.jsp"></jsp:include>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<jsp:include page="../common/lefMenu.jsp"></jsp:include>
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<h3 class="wrapper-title"><spring:message
									code="label.edit.titel" /></h3>
				<div class="wrapper-bar">
					<ul class="wrapper-breadcrumb">
						<li><span class="breadcrumb-sub breadcrumb-sub-before"><spring:message
									code="label.admin" /></span>
							<i class="fa fa-angle-right" aria-hidden="true"></i></li>
						<li><span class="breadcrumb-sub breadcrumb-sub-after"><spring:message
									code="label.order" /></span> <i class="fa fa-angle-right" aria-hidden="true"></i>
						</li>
						<li><span class="breadcrumb-sub breadcrumb-sub-after"><spring:message
									code="label.edit.titel" /></span></li>
					</ul>
				</div>
				<div class="row">
					<div class="col-lg-5 col-md-5">
						<!-- BEGIN FORM-->
						<form
							action="${pageContext.request.contextPath}/admin/editOrders/${editOrders.id}"
							method="POST" enctype="multipart/form-data">
							<div class="form-body">
								<div class="row ">
									<div class="col-md-6">
										<div class="form-group">
											<span class="field-title"><spring:message
									code="label.date.order" /></span> <input readonly="readonly"
												type="datetime" class="form-input" name="orderDate"
												value="${editOrders.orderDate}">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<span class="field-title"><spring:message
									code="label.status.order" /> </span> <select
												class="status-select form-input" name="status">
												<c:forEach items="${arrStatus}" var="status">

													<option value="${status.key}"
														<c:if test="${status.key == editOrders.status}">
														selected
														</c:if>>

														${status.value}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								<div class="row ">
									<div class="col-md-6">
										<div class="form-group">
											<span class="field-title"><spring:message
									code="label.address.order" /></span> <input readonly="readonly"
												type="text" class="form-input" name="address"
												value="${editOrders.address}">
										</div>
									</div>
									<div class="col-md-6 ">
										<div class="form-group">
											<span class="field-title"><spring:message
									code="label.totalprice.order" /></span> <input readonly="readonly"
												type="number" class="form-input" name="orderTotalPrice"
												value="${editOrders.orderTotalPrice}">
										</div>
									</div>
								</div>
								<div class="row ">
									<div class="col-md-6 ">
										<div class="form-group">
											<span class="field-title"><spring:message
									code="label.name.order" /></span> <input readonly="readonly"
												type="text" class="form-input" name="name"
												value="${editOrders.name}">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<span class="field-title"><spring:message
									code="label.phone.order" /> </span> <input readonly="readonly"
												type="text" class="form-input" name="phone"
												value="${editOrders.phone}">
										</div>
									</div>
								</div>

								<div class="row ">
									<div class="col-md-6">
										<div class="form-group">
											<span class="field-title"><spring:message
									code="label.email.order" /> </span> <input readonly="readonly"
												type="text" class="form-input" name="email"
												value="${editOrders.email}">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<span class="field-title"><spring:message
									code="label.username" /> </span> <input readonly="readonly"
												type="text" class="form-input" name="username"
												value="${editOrders.user.username}">
										</div>
									</div>
								</div>

								<div class="wrapper-bar-marker"></div>

								<div class="row ">
									<div class="col-md-12">
										<div class="form-group">
											<div class="button-group button-group-right">
												<button type="submit" class="button btn-submit"><spring:message
									code="label.button.submit" /></button>
												<a href="${pageContext.request.contextPath}/admin/listOrder" type="button" class="button btn-cancel"><spring:message
									code="label.button.cancel" /></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->





	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var selItem = localStorage.getItem("locales");
							$('#locales').val(selItem ? selItem : 'en');
							$("#locales")
									.change(
											function() {
												var selectedOption = $(
														'#locales').val();
												if (selectedOption) {
													window.location
															.replace('${pageContext.request.contextPath}/admin/editOrders/${editOrders.id}?lang='
																	+ selectedOption);
													localStorage.setItem(
															"locales",
															selectedOption);
												}
											});
						});
	</script>
</body>
<!-- END BODY -->
</html>