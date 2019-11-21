<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../common/clientCommon/head.jsp"></jsp:include>
<!-- Body BEGIN -->
<body class="ecommerce">
	<jsp:include page="../common/clientCommon/menu.jsp"></jsp:include>
	<div class="padding-list"></div>

	<div class="main">
		<div class="container">
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN CONTENT -->
				<div class="col-md-12 col-sm-12">
					<h1>
						<spring:message code="label.cart.shoppingcart" />
					</h1>
					<div class="goods-page">
						<div class="goods-data clearfix">
							<div class="table-wrapper-responsive">
								<table summary="Shopping cart">
									<tr>
										<th class="goods-page-image"><spring:message
												code="label.cart.image" /></th>
										<th class="goods-page-description"><spring:message
												code="label.cart.detail" /></th>
										<th class="goods-page-ref-no"><spring:message
												code="label.cart.name" /></th>
										<th class="goods-page-quantity"><spring:message
												code="label.cart.quantity" /></th>
										<th class="goods-page-price"><spring:message
												code="label.cart.price" /></th>
										<th class="goods-page-total" colspan="2"><spring:message
												code="label.cart.subtotal" /></th>
									</tr>
									<c:forEach var="cart" items="${sessionScope.listCart}">
										<tr>
											<td class="goods-page-image"><a href="#"><img
													src="${pageContext.request.contextPath}/images/${cart.product.image}"
													alt="Berry Lace Dress"></a></td>
											<td class="goods-page-description">
												<h3>
													<span>${cart.product.detail}</span>
												</h3>
											</td>
											<td class="goods-page-ref-no">${cart.product.name}</td>
											<td class="goods-page-quantity">
												<div class="product-quantity">
													<input id="product-quantity" type="text"
														value="${cart.quantity}" class="form-control input-sm">
												</div>
											</td>
											<td class="goods-page-price"><strong>${cart.product.price}<span>
														VND</span></strong></td>
											<td class="goods-page-total"><strong>${cart.quantity * cart.product.price}<span>
														VND</span></strong></td>
											<td class="del-goods-col"><a data-toggle="modal"
												class="icon-delete" href="#popupDelete_${cart.product.id}">&nbsp;</a>
											</td>
										</tr>
										<!-- Modal -->
										<div class="modal fade popupDelete"
											id="popupDelete_${cart.product.id}" tabindex="-1"
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
														<a type="button" class="btn btn-danger"
															href="${pageContext.request.contextPath}/delete/${cart.product.id}">Delete</a>
														<button type="button" class="btn btn-secondary"
															data-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</table>
							</div>

							<div class="shopping-total">
								<ul>
									<li class="shopping-total-price"><em><spring:message
												code="label.cart.total" /></em> <strong class="price">${totalPrice}<span>
												VND</span></strong></li>
								</ul>
							</div>
						</div>
						<a class="btn btn-primary" data-toggle="modal" class="icon-delete"
							href="#popupDelete_${cart.product.id}"><spring:message
								code="label.cart.payment" /><i class="fa fa-check"></i> </a>

						<!-- Modal -->
						<div class="modal fade popupDelete"
							id="popupDelete_${cart.product.id}" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h4 class="modal-title" id="exampleModalLabel">
											<strong><spring:message code="label.popup.titel.payment" /></strong>
										</h4>
									</div>
									<form action="${pageContext.request.contextPath}/payment"
										method="POST" class="form-horizontal">
										<div class="modal-body">
											<div class="form-body">
												<div class="form-group">
													<label class="col-md-3 control-label"><spring:message code="label.popup.username" /></label>
													<div class="col-md-6">
														<c:if test="${currentUser == null}">
															<input type="text" readonly name="username"
																value="Khách Vãn Lai" class="form-control"
																placeholder="UseName">
														</c:if>
														<c:if test="${currentUser != null}">
															<input type="text" readonly name="username"
																value="${currentUser.username}" class="form-control"
																placeholder="UseName">
														</c:if>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label"><spring:message code="label.popup.address" /></label>
													<div class="col-md-6">
														<input required="required" type="text" name="address" class="form-control"
															placeholder="Address">
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label"><spring:message code="label.popup.name" /></label>
													<div class="col-md-6">
														<c:if test="${currentUser == null}">
															<input type="text" name="name" class="form-control"
																placeholder="Name">
														</c:if>
														<c:if test="${currentUser != null}">
															<input type="text" name="name" readonly
																value="${currentUser.name}" class="form-control"
																placeholder="Name">
														</c:if>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label"><spring:message code="label.popup.phone" /></label>
													<div class="col-md-6">
														<c:if test="${currentUser == null}">
															<input type="text" name="phone" class="form-control"
																placeholder="Address">
														</c:if>
														<c:if test="${currentUser != null}">
															<input type="text" name="phone"
																value="${currentUser.phone}" class="form-control"
																placeholder="Phone">
														</c:if>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label"><spring:message code="label.popup.email" /></label>
													<div class="col-md-6">
														<c:if test="${currentUser == null}">
															<input type="text" name="email" class="form-control"
																placeholder="Email">
														</c:if>
														<c:if test="${currentUser != null}">
															<input type="text" name="email"
																value="${currentUser.email}" class="form-control"
																placeholder="Email">
														</c:if>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-3 control-label"><spring:message code="label.popup.totalprice" /></label>
													<div class="col-md-6">
														<div class="input-icon right">
															<input type="number" readonly name="total"
																value="${totalPrice}" class="form-control"
																placeholder="Right icon">
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-danger"><spring:message code="label.button.submit" /></button>
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal"><spring:message code="label.confirm.delete.closed" /></button>
										</div>
									</form>


								</div>
							</div>
						</div>

						<a href="${pageContext.request.contextPath}/home"  class="btn btn-default" type="button">
							<spring:message code="label.cart.continueshopping" />
							<i class="fa fa-shopping-cart"></i>
						</a>
					</div>
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->

			<!-- BEGIN SIMILAR PRODUCTS -->
			<div class="row margin-bottom-40"></div>
			<!-- END SIMILAR PRODUCTS -->
		</div>
	</div>

	<!-- BEGIN FOOTER -->
	<div class="footer footer-position">
		<div class="container">
			<div class="row">
				<!-- BEGIN COPYRIGHT -->
				<div class="col-md-6 col-sm-6 padding-top-10">2019 © BummShop</div>
				<!-- END COPYRIGHT -->
			</div>
		</div>
	</div>
	<!-- END FOOTER -->
	<jsp:include page="../common/clientCommon/footerCart.jsp"></jsp:include>
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
															.replace('${pageContext.request.contextPath}/cart?lang='
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