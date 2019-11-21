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
					<spring:message code="label.order.list" />
				</h3>
				<div class="wrapper-bar">
					<ul class="wrapper-breadcrumb">
						<li><span class="breadcrumb-sub breadcrumb-sub-before"><spring:message
									code="label.admin" /></span> <i class="fa fa-angle-right"
							aria-hidden="true"></i></li>
						<li><span class="breadcrumb-sub breadcrumb-sub-after"><spring:message
									code="label.order" /></span></li>
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
												action="${pageContext.request.contextPath}/admin/listOrder"
												method="GET">
												<div class="table-search pull-right">
													<div class="table-search-content">
														<input type="text" name="search"
															class="form-control table-search-input"
															placeholder="<spring:message
									code="label.search.by.address.tatus" />" />
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
											<th class="Location-th"><span
												class=" pull-left text-color"> <spring:message
														code="label.date.order" />
											</span></th>
											<th class="CMC-th"><span class=" pull-left text-color">
													<spring:message code="label.status.order" />
											</span></th>
											<th class="EBID-th"><span class=" pull-left text-color">
													<spring:message code="label.address.order" />
											</span></th>
											<th class="alert-th"><span class=" pull-left text-color">
													<spring:message code="label.totalprice.order" />
											</span></th>
											<th class="alert-th"><span class=" pull-left text-color">
													<spring:message code="label.name.order" />
											</span></th>
											<th class="alert-th"><span class=" pull-left text-color">
													<spring:message code="label.phone.order" />
											</span></th>
											<th class="alert-th"><span class=" pull-left text-color">
													<spring:message code="label.email.order" />
											</span></th>
											<th colspan="2" class="action-th"><span
												class="text-color"> <spring:message
														code="label.action.order" /></span></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${allOrder}" var="order">
											<tr>
												<td><span class="value-padding">${order.orderDate}</span></td>
												<td><select disabled class="status-select" name="">
														<c:forEach items="${arrStatus}" var="status">

															<option value="${status.key}"
																<c:if test="${status.key == order.status}">
														selected
														</c:if>>

																${status.value}</option>
														</c:forEach>
												</select></td>
												<td class="value-padding"><span class="value-padding">${order.address}</span>
												</td>
												<td><span class="value-padding">${order.orderTotalPrice}</span></td>
												<td><span class="value-padding">${order.name}</span></td>
												<td><span class="value-padding">${order.phone}</span></td>
												<td><span class="value-padding">${order.email}</span></td>
												<td class="action-td"><a
													href="${pageContext.request.contextPath}/admin/editOrders/${order.id}"
													class="icon-edit"></a></td>
												<td class="action-td"><a
													href="#popupDelete_${order.id}" data-toggle="modal"
													class="icon-delete"></a></td>
											</tr>
											<!-- Modal -->
											<div class="modal fade popupDelete"
												id="popupDelete_${order.id}" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog" role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h4 class="modal-title" id="exampleModalLabel">
																<strong><spring:message
																		code="label.confirm.delete" /></strong>
															</h4>
														</div>
														<div class="modal-body">
															<b><spring:message
																	code="label.confirm.delete.content" /></b>
														</div>
														<div class="modal-footer">
															<a type="button" class="btn btn-danger"
																href="${pageContext.request.contextPath}/admin/listOrder/delete/${order.id}/${currenPage}"><spring:message
																	code="label.confirm.delete.delete" /></a>
															<button type="button" class="btn btn-secondary"
																data-dismiss="modal">
																<spring:message code="label.confirm.delete.closed" />
															</button>
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
														href="${pageContext.request.contextPath}/admin/listOrder/${back}"><spring:message
															code="label.back" /></a>
												</c:if>
												<c:if test="${search != null && !search.equals('')}">
													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listOrder/${back}?search=${search}"><spring:message
															code="label.back" /></a>
												</c:if>
											</c:if> <c:if test="${back == -1}">
												<a class="pagination-a"><spring:message
														code="label.back" /></a>
											</c:if> <c:forEach begin="1" end="${totalPage}" varStatus="status">
												<c:if test="${search == null || search.equals('')}">

													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listOrder/${status.count}"
														<c:if test="${currenPage == status.count}">
															 style="background: #b5b5ca;"
															 </c:if>>${status.count}
													</a>

												</c:if>
												<c:if test="${search != null && !search.equals('')}">
													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listOrder/${status.count}?search=${search}"
														<c:if test="${currenPage == status.count}">
															 style="background: #b5b5ca;"
															 </c:if>>${status.count}</a>
												</c:if>
											</c:forEach> <c:if test="${next > -1}">
												<c:if test="${search == null || search.equals('')}">
													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listOrder/${next}"><spring:message
															code="label.next" /></a>
												</c:if>
												<c:if test="${search != null && !search.equals('')}">
													<a class="pagination-a"
														href="${pageContext.request.contextPath}/admin/listOrder/${next}?search=${search}"><spring:message
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
															.replace('${pageContext.request.contextPath}/admin/listOrder?lang='
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