<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
				<!-- BEGIN PAGE HEADER-->
				<h3 class="fa fa-home wrapper-title">
					<spring:message code="label.admin" />
				</h3>
				<div class="wrapper-bar">
					<ul class="wrapper-breadcrumb">
						<li><span class="breadcrumb-sub breadcrumb-sub-before"><spring:message
									code="label.home" /></span> <i class="fa fa-angle-right"
							aria-hidden="true"></i></li>
						<li><span class="breadcrumb-sub breadcrumb-sub-after"><spring:message
									code="label.statistical" /></span></li>
					</ul>
				</div>
				<!-- END PAGE HEADER-->
				<!-- BEGIN DASHBOARD STATS -->
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="dashboard-stat blue-madison">
							<div class="visual">
								<i class="fa fa-comments"></i>
							</div>
							<div class="details">
								<div class="number">400</div>
								<div class="desc">Total User</div>
							</div>
							<a class="more"> View more </a>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="dashboard-stat red-intense">
							<div class="visual">
								<i class="fa fa-bar-chart-o"></i>
							</div>
							<div class="details">
								<div class="number">1000</div>
								<div class="desc">Total Order</div>
							</div>
							<a class="more"> View more </a>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="dashboard-stat green-haze">
							<div class="visual">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<div class="details">
								<div class="number">500</div>
								<div class="desc">Total Product</div>
							</div>
							<a class="more"> View more </a>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="dashboard-stat purple-plum">
							<div class="visual">
								<i class="fa fa-globe"></i>
							</div>
							<div class="details">
								<div class="number">100</div>
								<div class="desc">Total Category</div>
							</div>
							<a class="more"> View more </a>
						</div>
					</div>
				</div>
				<!-- END DASHBOARD STATS -->
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<!-- BEGIN PORTLET-->
						<div class="portlet light ">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-bar-chart font-green-sharp hide"></i> <span
										class="caption-subject font-green-sharp bold uppercase">Order
										statistics by date</span>
								</div>
								<div class="actions">
									<div class="btn-group btn-group-devided" data-toggle="buttons">
									</div>
								</div>
							</div>
							<div class="portlet-body">
								<div id="site_statistics_loading">
									<img
										src="${pageContext.request.contextPath}/assets/admin/layout/img/loading.gif"
										alt="loading" />
								</div>
								<div id="site_statistics_content" class="display-none">
									<div id="site_statistics" class="chart"></div>
								</div>
							</div>
						</div>
						<!-- END PORTLET-->
					</div>
					<div class="col-md-6 col-sm-6">
						<!-- BEGIN PORTLET-->
						<div class="portlet light ">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-share font-red-sunglo hide"></i> <span
										class="caption-subject font-red-sunglo bold uppercase">Revenue
										by month</span>
								</div>
							</div>
							<div class="portlet-body">
								<div id="site_activities_loading">
									<img
										src="${pageContext.request.contextPath}/assets/admin/layout/img/loading.gif"
										alt="loading" />
								</div>
								<div id="site_activities_content" class="display-none">
									<div id="site_activities" style="height: 228px;"></div>
								</div>
								<div style="margin: 20px 0 10px 30px">
									<div class="row">
										<div class="col-md-3 col-sm-3 col-xs-6 text-stat">
											<span class="label label-sm label-success"> Revenue: </span>
											<h3>$1000</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END PORTLET-->
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="portlet light ">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-cursor font-purple-intense hide"></i> <span
										class="caption-subject font-purple-intense bold uppercase">Percentage
										statistics</span>
								</div>
							</div>
							<div class="portlet-body">
								<div class="row">
									<div class="col-md-4">
										<div class="easy-pie-chart">
											<div class="number transactions" data-percent="55">
												<span> +55 </span> %
											</div>
											<a class="title" href="javascript:;"> Order <i
												class="icon-arrow-right"></i>
											</a>
										</div>
									</div>
									<div class="margin-bottom-10 visible-sm"></div>
									<div class="col-md-4">
										<div class="easy-pie-chart">
											<div class="number visits" data-percent="85">
												<span> +85 </span> %
											</div>
											<a class="title" href="javascript:;"> Revenue <i
												class="icon-arrow-right"></i>
											</a>
										</div>
									</div>
									<div class="margin-bottom-10 visible-sm"></div>
									<div class="col-md-4">
										<div class="easy-pie-chart">
											<div class="number bounce" data-percent="46">
												<span> -46 </span> %
											</div>
											<a class="title" href="javascript:;"> Inventory <i
												class="icon-arrow-right"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="portlet light ">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-equalizer font-purple-plum hide"></i> <span
										class="caption-subject font-red-sunglo bold uppercase">Product
										views</span>
								</div>
							</div>
							<div class="portlet-body">
								<div class="row">
									<div class="col-md-4">
										<div class="sparkline-chart">
											<div class="number" id="sparkline_bar"></div>
											<a class="title" href="javascript:;"> Most viewed
												products <i class="icon-arrow-right"></i>
											</a>
										</div>
									</div>
									<div class="margin-bottom-10 visible-sm"></div>
									<div class="col-md-4">
										<div class="sparkline-chart">
											<div class="number" id="sparkline_bar2"></div>
											<a class="title" href="javascript:;"> Best - selling
												product <i class="icon-arrow-right"></i>
											</a>
										</div>
									</div>
									<div class="margin-bottom-10 visible-sm"></div>
									<div class="col-md-4">
										<div class="sparkline-chart">
											<div class="number" id="sparkline_line"></div>
											<a class="title" href="javascript:;"> Products canceled
												the most <i class="icon-arrow-right"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->

	</div>
	<!-- END CONTAINER -->
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
															.replace('${pageContext.request.contextPath}/admin/admin?lang='
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