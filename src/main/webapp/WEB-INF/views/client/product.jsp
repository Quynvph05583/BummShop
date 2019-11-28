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
<jsp:include page="../client/bt/header.jsp"></jsp:include>

	<div class="main">
		<div class="container">
			<form class="padding-list"
				action="${pageContext.request.contextPath}/home" method="GET">
				<div class="pull-right" style="padding-bottom: 10px;">
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
				<div class="title-product">
					<h4>
						<spring:message code="label.product.list" />
					</h4>
				</div>
			</form>
			<!-- BEGIN SIDEBAR & CONTENT -->
			<div class="row margin-bottom-40">
				<!-- BEGIN CONTENT -->
				<div class="col-md-12">
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
													<strong>${product.price} <span> VND</span></strong>
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
					<!-- BEGIN PAGINATOR -->
					<div class="content-pagination pull-right">
						<ul class="pagination">
							<li><c:if test="${back > -1}">
									<c:if test="${search == null || search.equals('')}">
										<a class="pagination-a"
											href="${pageContext.request.contextPath}/listProduct/${back}?category=${categoryId}"><spring:message
												code="label.back" /></a>
									</c:if>
									<c:if test="${search != null && !search.equals('')}">
										<a class="pagination-a"
											href="${pageContext.request.contextPath}/listProduct/${back}?category=${categoryId}&search=${search}"><spring:message
												code="label.back" /></a>
									</c:if>
								</c:if> <c:if test="${back == -1}">
									<a class="pagination-a"><spring:message code="label.back" /></a>
								</c:if> <c:forEach begin="1" end="${totalPage}" varStatus="status">
									<c:if test="${search == null || search.equals('')}">

										<a class="pagination-a"
											href="${pageContext.request.contextPath}/listProduct/${status.count}?category=${categoryId}"
											<c:if test="${currenPage == status.count}">
															 style="background: #b5b5ca;"
															 </c:if>>${status.count}
										</a>

									</c:if>
									<c:if test="${search != null && !search.equals('')}">
										<a class="pagination-a"
											href="${pageContext.request.contextPath}/listProduct/${status.count}?category=${categoryId}&search=${search}"
											<c:if test="${currenPage == status.count}">
															 style="background: #b5b5ca;"
															 </c:if>>${status.count}</a>
									</c:if>
								</c:forEach> <c:if test="${next > -1}">
									<c:if test="${search == null || search.equals('')}">
										<a class="pagination-a"
											href="${pageContext.request.contextPath}/listProduct/${next}?category=${categoryId}"><spring:message
												code="label.next" /></a>
									</c:if>
									<c:if test="${search != null && !search.equals('')}">
										<a class="pagination-a"
											href="${pageContext.request.contextPath}/listProduct/${next}?category=${categoryId}&search=${search}"><spring:message
												code="label.next" /></a>
									</c:if>
								</c:if> <c:if test="${next == -1}">
									<a class="pagination-a"><spring:message code="label.next" /></a>
								</c:if></li>
						</ul>
					</div>
					<!-- END PAGINATOR -->
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>

	<jsp:include page="../client/bt/footer.jsp"></jsp:include>
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
															.replace('${pageContext.request.contextPath}/listProduct?lang='
																	+ selectedOption);
													localStorage.setItem(
															"locales",
															selectedOption);
												}
											});
						});
	</script>
	<script
	src="${pageContext.request.contextPath}/assets/global/plugins/jquery.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/assets/global/plugins/jquery-migrate.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/assets/global/plugins/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/assets/frontend/layout/scripts/back-to-top.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
	type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script
	src="${pageContext.request.contextPath}/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"
	type="text/javascript"></script>
<!-- pop up -->
<script
	src="${pageContext.request.contextPath}/assets/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel-rtl.js"
	type="text/javascript"></script>
<!-- slider for products -->
<script
	src='${pageContext.request.contextPath}/assets/global/plugins/zoom/jquery.zoom.min.js'
	type="text/javascript"></script>
<!-- product zoom -->
<script
	src="${pageContext.request.contextPath}/assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js"
	type="text/javascript"></script>
<!-- Quantity -->

<!-- BEGIN LayerSlider -->
<script
	src="${pageContext.request.contextPath}/assets/global/plugins/slider-layer-slider/js/greensock.js"
	type="text/javascript"></script>
<!-- External libraries: GreenSock -->
<script
	src="${pageContext.request.contextPath}/assets/global/plugins/slider-layer-slider/js/layerslider.transitions.js"
	type="text/javascript"></script>
<!-- LayerSlider script files -->
<script
	src="${pageContext.request.contextPath}/assets/global/plugins/slider-layer-slider/js/layerslider.kreaturamedia.jquery.js"
	type="text/javascript"></script>
<!-- LayerSlider script files -->
<script
	src="${pageContext.request.contextPath}/assets/frontend/pages/scripts/layerslider-init.js"
	type="text/javascript"></script>
<!-- END LayerSlider -->

<script
	src="${pageContext.request.contextPath}/assets/frontend/layout/scripts/layout.js"
	type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		Layout.init();
		Layout.initOWL();
		LayersliderInit.initLayerSlider();
		Layout.initImageZoom();
		Layout.initTouchspin();
		Layout.initTwitter();
	});
</script>
</body>
<!-- END BODY -->
</html>