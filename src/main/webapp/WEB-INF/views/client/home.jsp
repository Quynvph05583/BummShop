<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../common/clientCommon/head.jsp"></jsp:include>
<body class="animsition">
<!-- Body BEGIN -->
<!-- Header -->
<jsp:include page="../client/bt/header.jsp"></jsp:include>
<!-- Slider -->
<jsp:include page="../client/bt/slider.jsp"></jsp:include>



<!-- Banner -->
<div class="sec-banner bg0">
	<div class="flex-w flex-c-m">
		<div class="size-202 m-lr-auto respon4">
			<!-- Block1 -->
			<div class="block1 wrap-pic-w">
				<img src="${pageContext.request.contextPath}/assets/new/images/skincare.jpg" alt="IMG-BANNER" style="height:360px;"> <a
					href="product.html"
					class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
					<div class="block1-txt-child1 flex-col-l">
						<span class="block1-name ltext-102 trans-04 p-b-8"><spring:message code="label.home.banner.product1"/></span>

						<span class="block1-info stext-102 trans-04"> Winter 2019 </span>
					</div>

					<div class="block1-txt-child2 p-b-4 trans-05">
						<div class="block1-link stext-101 cl0 trans-09">Shop Now</div>
					</div>
				</a>
			</div>
		</div>

		<div class="size-202 m-lr-auto respon4">
			<!-- Block1 -->
			<div class="block1 wrap-pic-w">
				<img src="${pageContext.request.contextPath}/assets/new/images/bodyskincare.jpg" alt="IMG-BANNER" style="height:360px;"> <a
					href="product.html"
					class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
					<div class="block1-txt-child1 flex-col-l">
						<span class="block1-name ltext-102 trans-04 p-b-8"><spring:message code="label.home.banner.product2"/> </span> 
						<span
							class="block1-info stext-102 trans-04">  Winter 2019 </span>
					</div>

					<div class="block1-txt-child2 p-b-4 trans-05">
						<div class="block1-link stext-101 cl0 trans-09">Shop Now</div>
					</div>
				</a>
			</div>
		</div>

		<div class="size-202 m-lr-auto respon4">
			<!-- Block1 -->
			<div class="block1 wrap-pic-w">
				<img src="${pageContext.request.contextPath}/assets/new/images/cosmetics.jpg" alt="IMG-BANNER" style="height:360px;"> <a
					href="product.html"
					class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
					<div class="block1-txt-child1 flex-col-l">
						<span class="block1-name ltext-102 trans-04 p-b-8"> <spring:message code="label.home.banner.product3"/> </span> <span
							class="block1-info stext-102 trans-04">  Winter 2019 </span>
					</div>

					<div class="block1-txt-child2 p-b-4 trans-05">
						<div class="block1-link stext-101 cl0 trans-09">Shop Now</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</div>


<!-- Product -->
<section class="sec-product bg0 p-t-100 p-b-50">
	<div class="container">
		<div class="p-b-32">
			<h3 class="ltext-105 cl5 txt-center respon1">Store Overview</h3>
		</div>

		<!-- Tab01 -->
		<div class="tab01">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li class="nav-item p-b-10"><a class="nav-link active"
					data-toggle="tab" href="#skincare" role="tab">SkinCare</a></li>

				<li class="nav-item p-b-10"><a class="nav-link"
					data-toggle="tab" href="#bodyskincare" role="tab">Body SkinCare</a></li>

				<li class="nav-item p-b-10"><a class="nav-link"
					data-toggle="tab" href="#cosmetic" role="tab">Cosmetic</a></li>

			
			</ul>

			<!-- Tab panes -->
			<div class="tab-content p-t-50">
				<!-- - -->
				<div class="tab-pane fade show active" id="skincare"
					role="tabpanel">
					<!-- Slide2 -->
					<div class="wrap-slick2">
						<div class="slick2">
							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-01.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Esprit Ruffle Shirt </a> <span class="stext-105 cl3">
												$16.64 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-02.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Herschel supply </a> <span class="stext-105 cl3"> $35.31
											</span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-03.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Only Check Trouser </a> <span class="stext-105 cl3">
												$25.50 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-04.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Classic Trench Coat </a> <span class="stext-105 cl3">
												$75.00 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-05.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Front Pocket Jumper </a> <span class="stext-105 cl3">
												$34.75 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-06.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Vintage Inspired Classic </a> <span class="stext-105 cl3">
												$93.20 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-07.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Shirt in Stretch Cotton </a> <span class="stext-105 cl3">
												$52.66 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-08.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Pieces Metallic Printed </a> <span class="stext-105 cl3">
												$18.96 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- - -->
				<div class="tab-pane fade" id="bodyskincare" role="tabpanel">
					<!-- Slide2 -->
					<div class="wrap-slick2">
						<div class="slick2">
							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-09.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Converse All Star Hi Plimsolls </a> <span class="stext-105 cl3">
												$75.00 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-10.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Femme T-Shirt In Stripe </a> <span class="stext-105 cl3">
												$25.85 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-11.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Herschel supply </a> <span class="stext-105 cl3"> $63.16
											</span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-12.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Herschel supply </a> <span class="stext-105 cl3"> $63.15
											</span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-13.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												T-Shirt with Sleeve </a> <span class="stext-105 cl3">
												$18.49 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-14.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Pretty Little Thing </a> <span class="stext-105 cl3">
												$54.79 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-15.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Mini Silver Mesh Watch </a> <span class="stext-105 cl3">
												$86.85 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-16.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Square Neck Back </a> <span class="stext-105 cl3"> $29.64
											</span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- - -->
				<div class="tab-pane fade" id="cosmetic" role="tabpanel">
					<!-- Slide2 -->
					<div class="wrap-slick2">
						<div class="slick2">
							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-02.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Herschel supply </a> <span class="stext-105 cl3"> $35.31
											</span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-04.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Classic Trench Coat </a> <span class="stext-105 cl3">
												$75.00 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-06.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Vintage Inspired Classic </a> <span class="stext-105 cl3">
												$93.20 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-09.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Converse All Star Hi Plimsolls </a> <span class="stext-105 cl3">
												$75.00 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-11.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Herschel supply </a> <span class="stext-105 cl3"> $63.16
											</span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-13.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												T-Shirt with Sleeve </a> <span class="stext-105 cl3">
												$18.49 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="item-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
								<!-- Block2 -->
								<div class="block2">
									<div class="block2-pic hov-img0">
										<img src="images/product-15.jpg" alt="IMG-PRODUCT"> <a
											href="#"
											class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1">
											Quick View </a>
									</div>

									<div class="block2-txt flex-w flex-t p-t-14">
										<div class="block2-txt-child1 flex-col-l ">
											<a href="product-detail.html"
												class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
												Mini Silver Mesh Watch </a> <span class="stext-105 cl3">
												$86.85 </span>
										</div>

										<div class="block2-txt-child2 flex-r p-t-3">
											<a href="#"
												class="btn-addwish-b2 dis-block pos-relative js-addwish-b2">
												<img class="icon-heart1 dis-block trans-04"
												src="images/icons/icon-heart-01.png" alt="ICON"> <img
												class="icon-heart2 dis-block trans-04 ab-t-l"
												src="images/icons/icon-heart-02.png" alt="ICON">
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- - -->
			</div>
		</div>
	</div>
</section>


<!-- Blog -->
<section class="sec-blog bg0 p-t-60 p-b-90">
	<div class="container">
		<div class="p-b-66">
			<h3 class="ltext-105 cl5 txt-center respon1">Our Blogs</h3>
		</div>

		<div class="row">
			<div class="col-sm-6 col-md-4 p-b-40">
				<div class="blog-item">
					<div class="hov-img0">
						<a href="blog-detail.html"> <img src="${pageContext.request.contextPath}/assets/new/images/skincareblog.jpg"
							alt="IMG-BLOG" style="height:250px">
						</a>
					</div>

					<div class="p-t-15">
						<div class="stext-107 flex-w p-b-14">
							<span class="m-r-3"> <span class="cl4"> By </span> <span
								class="cl5"> Nancy Ward </span>
							</span> <span> <span class="cl4"> on </span> <span class="cl5">
									July 22, 2017 </span>
							</span>
						</div>

						<h4 class="p-b-12">
							<a href="blog-detail.html" class="mtext-101 cl2 hov-cl1 trans-04">
								8 Inspiring Ways to Wear Dresses in the Winter </a>
						</h4>

						<p class="stext-108 cl6">Duis ut velit gravida nibh bibendum
							commodo. Suspendisse pellentesque mattis augue id euismod.
							Interdum et male-suada fames</p>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 p-b-40">
				<div class="blog-item">
					<div class="hov-img0">
						<a href="blog-detail.html"> <img src="${pageContext.request.contextPath}/assets/new/images/bodyskincareblog.jpg"
							alt="IMG-BLOG" style="height:250px">
						</a>
					</div>

					<div class="p-t-15">
						<div class="stext-107 flex-w p-b-14">
							<span class="m-r-3"> <span class="cl4"> By </span> <span
								class="cl5"> Nancy Ward </span>
							</span> <span> <span class="cl4"> on </span> <span class="cl5">
									July 18, 2017 </span>
							</span>
						</div>

						<h4 class="p-b-12">
							<a href="blog-detail.html" class="mtext-101 cl2 hov-cl1 trans-04">
								The Great Big List of Men’s Gifts for the Holidays </a>
						</h4>

						<p class="stext-108 cl6">Nullam scelerisque, lacus sed
							consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in
							tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit ame
						</p>
					</div>
				</div>
			</div>

			<div class="col-sm-6 col-md-4 p-b-40">
				<div class="blog-item">
					<div class="hov-img0">
						<a href="blog-detail.html"> <img src="${pageContext.request.contextPath}/assets/new/images/cosmeticblog.jpg"
							alt="IMG-BLOG" style="height:250px">
						</a>
					</div>

					<div class="p-t-15">
						<div class="stext-107 flex-w p-b-14">
							<span class="m-r-3"> <span class="cl4"> By </span> <span
								class="cl5"> Nancy Ward </span>
							</span> <span> <span class="cl4"> on </span> <span class="cl5">
									July 2, 2017 </span>
							</span>
						</div>

						<h4 class="p-b-12">
							<a href="blog-detail.html" class="mtext-101 cl2 hov-cl1 trans-04">
								5 Winter-to-Spring Fashion Trends to Try Now </a>
						</h4>

						<p class="stext-108 cl6">Proin nec vehicula lorem, a efficitur
							ex. Nam vehicula nulla vel erat tincidunt, sed hendrerit ligula
							porttitor. Fusce sit amet maximus nunc</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<jsp:include page="../client/bt/footer.jsp"></jsp:include>


<!-- Back to top -->
<div class="btn-back-to-top" id="myBtn">
	<span class="symbol-btn-back-to-top"> <i
		class="zmdi zmdi-chevron-up"></i>
	</span>
</div>

<!-- Modal1 -->
<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
	<div class="overlay-modal1 js-hide-modal1"></div>

	<div class="container">
		<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
			<button class="how-pos3 hov3 trans-04 js-hide-modal1">
				<img src="images/icons/icon-close.png" alt="CLOSE">
			</button>

			<div class="row">
				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								<div class="item-slick3"
									data-thumb="images/product-detail-01.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="images/product-detail-01.jpg" alt="IMG-PRODUCT">

										<a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="images/product-detail-01.jpg"> <i
											class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3"
									data-thumb="images/product-detail-02.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="images/product-detail-02.jpg" alt="IMG-PRODUCT">

										<a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="images/product-detail-02.jpg"> <i
											class="fa fa-expand"></i>
										</a>
									</div>
								</div>

								<div class="item-slick3"
									data-thumb="images/product-detail-03.jpg">
									<div class="wrap-pic-w pos-relative">
										<img src="images/product-detail-03.jpg" alt="IMG-PRODUCT">

										<a
											class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04"
											href="images/product-detail-03.jpg"> <i
											class="fa fa-expand"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h4 class="mtext-105 cl2 js-name-detail p-b-14">Lightweight
							Jacket</h4>

						<span class="mtext-106 cl2"> $58.79 </span>

						<p class="stext-102 cl3 p-t-23">Nulla eget sem vitae eros
							pharetra viverra. Nam vitae luctus ligula. Mauris consequat
							ornare feugiat.</p>

						<!--  -->
						<div class="p-t-33">
							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">Size</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="time">
											<option>Choose an option</option>
											<option>Size S</option>
											<option>Size M</option>
											<option>Size L</option>
											<option>Size XL</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-203 flex-c-m respon6">Color</div>

								<div class="size-204 respon6-next">
									<div class="rs1-select2 bor8 bg0">
										<select class="js-select2" name="time">
											<option>Choose an option</option>
											<option>Red</option>
											<option>Blue</option>
											<option>White</option>
											<option>Grey</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
								</div>
							</div>

							<div class="flex-w flex-r-m p-b-10">
								<div class="size-204 flex-w flex-m respon6-next">
									<div class="wrap-num-product flex-w m-r-20 m-tb-10">
										<div
											class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product"
											type="number" name="num-product" value="1">

										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>

									<button
										class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
										Add to cart</button>
								</div>
							</div>
						</div>

						<!--  -->
						<div class="flex-w flex-m p-l-100 p-t-40 respon7">
							<div class="flex-m bor9 p-r-10 m-r-11">
								<a href="#"
									class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100"
									data-tooltip="Add to Wishlist"> <i
									class="zmdi zmdi-favorite"></i>
								</a>
							</div>

							<a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
							</a> <a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
							</a> <a href="#"
								class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100"
								data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var selItem = localStorage.getItem("locales");
						$('#locales').val(selItem ? selItem : 'en');
						$("#locales")
								.change(
										function() {
											var selectedOption = $('#locales')
													.val();
											if (selectedOption) {
												window.location
														.replace('${pageContext.request.contextPath}/home?lang='
																+ selectedOption);
												localStorage.setItem("locales",
														selectedOption);
											}
										});
					});
</script>
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/bootstrap/js/popper.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/select2/select2.min.js"></script>
<script>
	$(".js-select2").each(function() {
		$(this).select2({
			minimumResultsForSearch : 20,
			dropdownParent : $(this).next('.dropDownSelect2')
		});
	})
</script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/daterangepicker/moment.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/slick/slick.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/new/js/slick-custom.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/parallax100/parallax100.js"></script>
<script>
	$('.parallax100').parallax100();
</script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
	$('.gallery-lb').each(function() { // the containers for all your galleries
		$(this).magnificPopup({
			delegate : 'a', // the selector for gallery item
			type : 'image',
			gallery : {
				enabled : true
			},
			mainClass : 'mfp-fade'
		});
	});
</script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/sweetalert/sweetalert.min.js"></script>
<script>
	$('.js-addwish-b2').on('click', function(e) {
		e.preventDefault();
	});

	$('.js-addwish-b2').each(function() {
		var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
		$(this).on('click', function() {
			swal(nameProduct, "is added to wishlist !", "success");

			$(this).addClass('js-addedwish-b2');
			$(this).off('click');
		});
	});

	$('.js-addwish-detail').each(
			function() {
				var nameProduct = $(this).parent().parent().parent().find(
						'.js-name-detail').html();

				$(this).on('click', function() {
					swal(nameProduct, "is added to wishlist !", "success");

					$(this).addClass('js-addedwish-detail');
					$(this).off('click');
				});
			});

	/*---------------------------------------------*/

	$('.js-addcart-detail').each(
			function() {
				var nameProduct = $(this).parent().parent().parent().parent()
						.find('.js-name-detail').html();
				$(this).on('click', function() {
					swal(nameProduct, "is added to cart !", "success");
				});
			});
</script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/assets/new/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
	$('.js-pscroll').each(function() {
		$(this).css('position', 'relative');
		$(this).css('overflow', 'hidden');
		var ps = new PerfectScrollbar(this, {
			wheelSpeed : 1,
			scrollingThreshold : 1000,
			wheelPropagation : false,
		});

		$(window).on('resize', function() {
			ps.update();
		})
	});
</script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/assets/new/js/main.js"></script>
</body>
<!-- END BODY -->
</html>