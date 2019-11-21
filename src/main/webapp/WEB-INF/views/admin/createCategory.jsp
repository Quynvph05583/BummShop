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
				<h3 class="wrapper-title">
					<spring:message code="label.create.category" />
				</h3>
				<div class="wrapper-bar">
					<ul class="wrapper-breadcrumb">
						<li><span class="breadcrumb-sub breadcrumb-sub-before"><spring:message
									code="label.admin" /></span> <i class="fa fa-angle-right"
							aria-hidden="true"></i></li>
						<li><span class="breadcrumb-sub breadcrumb-sub-after"><spring:message
									code="label.category" /></span> <i class="fa fa-angle-right"
							aria-hidden="true"></i></li>
						<li><span class="breadcrumb-sub breadcrumb-sub-after"><spring:message
									code="label.create.category" /></span></li>
					</ul>
				</div>
				<div class="row">
					<div class="col-lg-5 col-md-5">
						<!-- BEGIN FORM-->
						<form
							action="${pageContext.request.contextPath}/admin/createCategory"
							method="POST" enctype="multipart/form-data">
							<div class="form-body">
								<div class="row ">
									<div class="col-md-6">
										<div class="form-group">
											<span class="field-title"><spring:message
													code="label.name" /> </span> <input required name="name"
												type="text" class="form-input">
										</div>
									</div>
								</div>

								<div class="row ">
									<div class="col-md-12">
										<div class="form-group">
											<div class="button-group button-group-right">
												<button type="submit" class="button btn-submit">
													<spring:message code="label.button.submit" />
												</button>
												<a 
													href="${pageContext.request.contextPath}/admin/listCategory"
													type="button" class="button btn-cancel"> <spring:message
														code="label.button.cancel" />
												</a>
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
															.replace('${pageContext.request.contextPath}/admin/createCategory?lang='
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