<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<!-- END PAGE LEVEL JAVASCRIPTS -->

<!-- END PAGE LEVEL JAVASCRIPTS -->
</html>