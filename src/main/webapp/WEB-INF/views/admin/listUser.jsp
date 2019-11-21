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
					<spring:message code="label.account.list" />
				</h3>
				<div class="wrapper-bar">
					<ul class="wrapper-breadcrumb">
						<li><span class="breadcrumb-sub breadcrumb-sub-before"><spring:message
									code="label.admin" /></span> <i class="fa fa-angle-right"
							aria-hidden="true"></i></li>
						<li><span class="breadcrumb-sub breadcrumb-sub-after"><spring:message
									code="label.account" /></span></li>
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
											<form
												action="${pageContext.request.contextPath}/admin/listUser"
												method="GET">
												<div class="table-search pull-right">
													<div class="table-search-content">
														<input type="text" name="search"
															class="form-control table-search-input"
															placeholder="<spring:message code="label.placeholder" />" />
														<button type="submit" class="table-search-icon">
															<img style=""
																src="${pageContext.request.contextPath}/assets/admin/layout/img/search.png">
														</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
								<table
									class="table table-striped table-bordered table-hover rmhub-table">
									<thead>
										<tr class="background-tr">
											<th class="username-th"><span
												class="pull-left text-color"><spring:message
														code="label.username" /></span></th>
											<th class="name-th"><span class="text-color"> <spring:message
														code="label.name" />
											</span></th>
											<th class="gender-th"><span
												class=" pull-left text-color"> <spring:message
														code="label.gender" />
											</span></th>
											<th class="age-th"><span class="text-color"> <spring:message
														code="label.age" />
											</span></th>
											<th class="phone-th"><span class="text-color"> <spring:message
														code="label.phone" />
											</span></th>
											<th class="address-th"><span
												class="pull-left text-color"> <spring:message
														code="label.address" />
											</span></th>
											<th class="type-th"><span class="text-color"> <spring:message
														code="label.typeuser" />
											</span></th>
											<th class="email-th"><span class="text-color"> <spring:message
														code="label.email" />
											</span></th>
											<th colspan="2" class="action-th"><span
												class="text-color"> <spring:message
														code="label.action" /></span></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${allUser}" var="user">
											<tr>
												<td class="item-align">${user.username}</td>
												<td><span class="value-padding">${user.name}</span></td>
												<td><span class="value-padding">${user.gender}</span></td>
												<td><span class="value-padding">${user.age}</span></td>
												<td><span class="value-padding">${user.phone}</span></td>
												<td><span class="value-padding">${user.address}</span></td>
												<td><span class="value-padding">${user.typeUser}</span></td>
												<td><span class="value-padding">${user.email}</span></td>
												<td class="action-td " ><a  class="icon-edit disabled"></a></td>
												<td class="action-td"><a
													href="#popupDelete_${user.username}" data-toggle="modal"
													class="icon-delete"></a></td>
											</tr>
											<!-- Modal -->
											<div class="modal fade popupDelete"
												id="popupDelete_${user.username}" tabindex="-1"
												role="dialog" aria-labelledby="exampleModalLabel"
												aria-hidden="true">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title" id="exampleModalLabel">
																<strong>Confirm Delete</strong>
															</h4>
														</div>
														<div class="modal-body">
															<b>Are you sure you want to delete this product? </b>
														</div>
														<div class="modal-footer">
															<c:if test="${user.typeUser == 'Admin'}">
																<a  type="button" class="btn btn-danger disabled "
																	href="${pageContext.request.contextPath}/admin/listUser/delete/${user.username}/${currenPage}">Delete</a>
															</c:if>
															<c:if test="${user.typeUser != 'Admin'}">
																<a type="button" class="btn btn-danger"
																	href="${pageContext.request.contextPath}/admin/listUser/delete/${user.username}/${currenPage}">Delete</a>
															</c:if>

															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">Close</button>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</tbody>

								</table>
								<div class="content-pagination pull-right">
									<ul class="pagination">
										<li><c:if test="${back > -1}">
												<c:if test="${search == null || search.equals('')}">
													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listProduct/${back}"><spring:message
															code="label.back" /></a>
												</c:if>
												<c:if test="${search != null && !search.equals('')}">
													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listProduct/${back}?search=${search}"><spring:message
															code="label.back" /></a>
												</c:if>
											</c:if> <c:if test="${back == -1}">
												<a class="pagination-a"><spring:message
														code="label.back" /></a>
											</c:if> <c:forEach begin="1" end="${totalPage}" varStatus="status">
												<c:if test="${search == null || search.equals('')}">

													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listProduct/${status.count}"
														<c:if test="${currenPage == status.count}">
															 style="background: #b5b5ca;"
															 </c:if>>${status.count}
													</a>

												</c:if>
												<c:if test="${search != null && !search.equals('')}">
													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listProduct/${status.count}?search=${search}"
														<c:if test="${currenPage == status.count}">
															 style="background: #b5b5ca;"
															 </c:if>>${status.count}</a>
												</c:if>
											</c:forEach> <c:if test="${next > -1}">
												<c:if test="${search == null || search.equals('')}">
													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listProduct/${next}"><spring:message
															code="label.next" /></a>
												</c:if>
												<c:if test="${search != null && !search.equals('')}">
													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listProduct/${next}?search=${search}"><spring:message
															code="label.next" /></a>
												</c:if>
											</c:if> <c:if test="${next == -1}">
												<a class="pagination-a"><spring:message
														code="label.next" /></a>
											</c:if></li>
									</ul>
								</div>
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
															.replace('${pageContext.request.contextPath}/admin/listUser?lang='
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