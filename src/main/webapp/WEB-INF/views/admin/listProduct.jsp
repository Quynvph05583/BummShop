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
					<spring:message code="label.product.list" />
				</h3>
				<div class="wrapper-bar">
					<ul class="wrapper-breadcrumb">
						<li><span class="breadcrumb-sub breadcrumb-sub-before"><spring:message
									code="label.admin" /></span> <i class="fa fa-angle-right"
							aria-hidden="true"></i></li>
						<li><span class="breadcrumb-sub breadcrumb-sub-after"><spring:message
									code="label.product" /></span></li>
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
											<a href="${pageContext.request.contextPath}/admin/create"
												class="button-add button-left pull-right"> <img
												class="icon-img-button"> <i class="fa fa-plus"></i> <spring:message
													code="label.add" />
											</a>
											<form
												action="${pageContext.request.contextPath}/admin/listProduct"
												method="GET">
												<div class="table-search pull-right">
													<div class="table-search-content">
														<input type="text" name="search"
															class="form-control table-search-input"
															placeholder="<spring:message
									code="label.search.by.name.price" />">
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
											<th class="id-td"><span class="text-color"><spring:message
														code="label.code" /></span></th>

											<th class="productName-td"><span
												class=" pull-left text-color"><spring:message
														code="label.name.product" /></span></th>
											<th class="price-td"><span class=" pull-left text-color">
													<spring:message code="label.price" />
											</span></th>
											<th class="image-td"><span class=" pull-left text-color">
													<spring:message code="label.image" />
											</span></th>
											<th class="alert-th"><span class=" pull-left text-color">
													<spring:message code="label.detail" />
											</span></th>
											<th class="quantity-td"><span
												class="pull-left text-color"> <spring:message
														code="label.quantity" />
											</span></th>
											<th class="categoryName-td"><span
												class="pull-left text-color"> <spring:message
														code="label.categoryname" />
											</span></th>
											<th colspan="2" class="action-th"><span
												class="text-color"> <spring:message
														code="label.action" /></span></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${allProduct}" var="product">
											<tr>

												<td><span class="id-td">${product.id}</span></td>
												<td><span class="productName-td">${product.name}</span></td>
												<td class="price-td"><span class="value-padding">${product.price}
														VND</span></td>
												<td><span class="image-td"><img
														class="img-thumbnail"
														src="${pageContext.request.contextPath}/images/${product.image}"></span></td>
												<td><span class="value-padding">${product.detail}</span></td>
												<td><span class="quantity-td">${product.quantity}</span></td>
												<td class="categoryName-td">${product.category.name}</td>
												<td class="action-td"><a
													href="${pageContext.request.contextPath}/admin/edit/${product.id}"
													class="icon-edit"></a></td>
												<td class="action-td"><a data-toggle="modal"
													href="#popupDelete_${product.id}" class="icon-delete"></a></td>
											</tr>
											<!-- Modal -->
											<div class="modal fade popupDelete"
												id="popupDelete_${product.id}" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
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
															<a type="button" class="btn btn-danger"
																href="${pageContext.request.contextPath}/admin/listProduct/delete/${product.id}/${currenPage}">Delete</a>
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
															.replace('${pageContext.request.contextPath}/admin/listProduct?lang='
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