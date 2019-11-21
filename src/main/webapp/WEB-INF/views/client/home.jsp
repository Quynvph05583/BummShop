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
	<jsp:include page="../common/clientCommon/slidehome.jsp"></jsp:include>
	<div class="main">
		<div class="container">
			<div class="row margin-bottom-40">
				<form action="${pageContext.request.contextPath}/home" method="GET">
					<div class="table-search pull-right" style="padding-bottom: 10px;">
						<div class="table-search-content">
							<input type="text" name="search"
								class="form-control table-search-input"
								placeholder="<spring:message
									code="label.search.by.name.price" />" />
							<button type="submit" class="table-search-icon">
								<img style=""
									src="${pageContext.request.contextPath}/assets/admin/layout/img/search.png">
							</button>
						</div>
					</div>
					<div class="title-listProduct">
						<h4>
							<spring:message code="label.product.list" />
						</h4>
					</div>
				</form>
				<!-- BEGIN PRODUCT -->
				<div class="col-md-12">
					<div></div>
					<!-- BEGIN PRODUCT LIST -->
					<div class="row product-list">
						<!-- PRODUCT ITEM START -->
						<c:forEach items="${allProduct}" var="product">
							<div class="col-md-3 col-sm-9 col-xs-12">
								<div class="product-item">
									<div class="pi-img-wrapper">
										<img
											src="${pageContext.request.contextPath}/images/${product.image}"
											class="img-responsive" alt="Berry Lace Dress">
										<div>
											<a
												href="${pageContext.request.contextPath}/images/${product.image}"
												class="btn btn-default fancybox-button"><spring:message
													code="label.home.zoom" /></a> <a
												href="#product-pop-up_${product.id}"
												class="btn btn-default fancybox-fast-view"><spring:message
													code="label.home.view" /></a>
										</div>
									</div>
									<h3>
										<span class="name-product">${product.name}</span>
									</h3>
									<div class="pi-price">${product.price}VND</div>
									<a href="#product-pop-up_${product.id}"
										class="btn btn-default fancybox-fast-view"><spring:message
											code="label.home.addtocart" /></a>
								</div>
							</div>

							<!-- BEGIN fast view of a product -->
							<div id="product-pop-up_${product.id}"
								style="display: none; width: 700px;">
								<div class="product-page product-pop-up">
									<div class="row">

										<div class="col-md-6 col-sm-6 col-xs-3">
											<div class="product-main-image">
												<img
													src="${pageContext.request.contextPath}/images/${product.image}"
													alt="Cool green dress with red bell" class="img-responsive">
											</div>
										</div>
										<div class="col-md-6 col-sm-6 col-xs-9">
											<h2>${product.name}</h2>
											<div class="price-availability-block clearfix">
												<div class="price">
													<strong>${product.price} <span>VND </span></strong>
												</div>
											</div>
											<div class="description">
												<p>${product.detail}</p>
											</div>
											<form
												action="${pageContext.request.contextPath}/add/${product.id}"
												method="POST">
												<div class="product-page-cart">
													<div class="product-quantity">
														<input id="product-quantity3" name="quantity"
															type="number" value="1" min="1"
															class="form-control input-sm">
													</div>
													<button class="btn btn-primary" type="submit">
														<spring:message code="label.home.addtocart" />
													</button>
												</div>
											</form>
										</div>
										<div class="sticker sticker-sale"></div>
									</div>
								</div>
							</div>
							<!-- END fast view of a product -->
						</c:forEach>
						<!-- PRODUCT ITEM END -->
					</div>
					<!-- END PRODUCT LIST -->
				</div>
				<!-- END SALE PRODUCT -->
				<!-- BEGIN PAGINATOR -->
				<div class="content-pagination pull-right">
					<ul class="pagination">
						<li><c:if test="${back > -1}">
								<c:if test="${search == null || search.equals('')}">
									<a class="pagination-a"
										href="${pageContext.request.contextPath}/home/${back}"><spring:message
											code="label.back" /></a>
								</c:if>
								<c:if test="${search != null && !search.equals('')}">
									<a class="pagination-a"
										href="${pageContext.request.contextPath}/home/${back}?search=${search}"><spring:message
											code="label.back" /></a>
								</c:if>
							</c:if> <c:if test="${back == -1}">
								<a class="pagination-a"><spring:message code="label.back" /></a>
							</c:if> <c:forEach begin="1" end="${totalPage}" varStatus="status">
								<c:if test="${search == null || search.equals('')}">

									<a class="pagination-a"
										href="${pageContext.request.contextPath}/home/${status.count}"
										<c:if test="${currenPage == status.count}">
															 style="background: #b5b5ca;"
															 </c:if>>${status.count}
									</a>

								</c:if>
								<c:if test="${search != null && !search.equals('')}">
									<a class="pagination-a"
										href="${pageContext.request.contextPath}/home/${status.count}?search=${search}"
										<c:if test="${currenPage == status.count}">
															 style="background: #b5b5ca;"
															 </c:if>>${status.count}</a>
								</c:if>
							</c:forEach> <c:if test="${next > -1}">
								<c:if test="${search == null || search.equals('')}">
									<a class="pagination-a"
										href="${pageContext.request.contextPath}/home/${next}"><spring:message
											code="label.next" /></a>
								</c:if>
								<c:if test="${search != null && !search.equals('')}">
									<a class="pagination-a"
										href="${pageContext.request.contextPath}/home/${next}?search=${search}"><spring:message
											code="label.next" /></a>
								</c:if>
							</c:if> <c:if test="${next == -1}">
								<a class="pagination-a"><spring:message code="label.next" /></a>
							</c:if></li>
					</ul>
				</div>
				<!-- END PAGINATOR -->
			</div>
		</div>
	</div>
	<jsp:include page="../common/clientCommon/footer.jsp"></jsp:include>
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
															.replace('${pageContext.request.contextPath}/home?lang='
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