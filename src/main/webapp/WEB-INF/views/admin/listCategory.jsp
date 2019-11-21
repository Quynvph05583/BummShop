<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
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
					<spring:message code="label.category.list" />
				</h3>
				<div class="wrapper-bar">
					<ul class="wrapper-breadcrumb">
						<li><span class="breadcrumb-sub breadcrumb-sub-before"><spring:message
									code="label.admin" /></span> <i class="fa fa-angle-right"
							aria-hidden="true"></i></li>
						<li><span class="breadcrumb-sub breadcrumb-sub-after"><spring:message
									code="label.category" /></span></li>
					</ul>
					<span class="message-delete">${message}</span>
				</div>
				<div class="row">
					<div class="col-md-12">
						<!-- BEGIN EXAMPLE TABLE PORTLET-->
						<div class="portlet box">
							<div class="portlet-body">
								<div class="table-toolbar">
									<div class="row">
										<div class="col-xs-12 col-sm-12">
											<a
												href="${pageContext.request.contextPath}/admin/createCategory"
												class="button-add button-left pull-right"> <img
												class="icon-img-button"> <i class="fa fa-plus"></i> <spring:message
													code="label.add" />
											</a>
											<div class="table-search pull-right">
												<div class="table-search-content">
													<input type="text" class="form-control table-search-input"
														placeholder="<spring:message
									code="label.search.by.name" />">
													<a class="table-search-icon" type="btn"> <img
														src="${pageContext.request.contextPath}/assets/admin/layout/img/search.png">
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<table
									class="table table-striped table-bordered table-hover rmhub-table">
									<thead>
										<tr class="background-tr">
											<th class="name-th"><span class="text-color name-float">
													<spring:message code="label.name" />
											</span></th>
											<th colspan="2" class="action-th"><span
												class="text-color"> <spring:message
														code="label.action" /></span></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${allCategory}" var="category">
											<tr>
												<td><span class="value-padding">${category.name}</span></td>
												<td class="action-td"><a
													href="${pageContext.request.contextPath}/admin/editCategory/${category.id}"
													class="icon-edit"></a></td>
												<td class="action-td"><a
													href="#popupDelete_${category.id}" data-toggle="modal"
													class="icon-delete"></a>
											</tr>
											<!-- Modal -->
											<div class="modal fade popupDelete"
												id="popupDelete_${category.id}" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title" id="exampleModalLabel">
																<strong>Confirm Delete</strong>
															</h4>
														</div>
														<div class="modal-body">
															<b>Are you sure you want to delete this category? </b>
														</div>
														<div class="modal-footer">
															<a type="button" class="btn btn-danger"
																href="${pageContext.request.contextPath}/admin/listCategory/delete/${category.id}">Delete</a>
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Close</button>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</tbody>

								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
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
															.replace('${pageContext.request.contextPath}/admin/listCategory?lang='
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