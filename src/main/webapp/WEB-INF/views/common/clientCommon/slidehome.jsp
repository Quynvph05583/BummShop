<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<div class="page-slider margin-bottom-35">
	<!-- LayerSlider start -->
	<div id="layerslider"
		style="width: 1320px; height: 494px; margin: 0 auto;">

		<!-- slide one start -->
		<div class="ls-slide ls-slide1"
			data-ls="offsetxin: right; slidedelay: 7000; transition2d: 24,25,27,28;">

			<img
				src="${pageContext.request.contextPath}/assets/frontend/pages/img/layerslider/slide1/bg.jpg"
				class="ls-bg" alt="Slide background">

			<div class="ls-l ls-title"
				style="top: 96px; left: 35%; white-space: nowrap;"
				data-ls="
            fade: true; 
            fadeout: true; 
            durationin: 750; 
            durationout: 750; 
            easingin: easeOutQuint; 
            rotatein: 90; 
            rotateout: -90; 
            scalein: .5; 
            scaleout: .5; 
            showuntil: 4000;
          ">
				<spring:message code="label.slide.tonesof" />
				<strong><spring:message code="label.slide.shopuifeatures" /></strong>
				<spring:message code="label.slide.designed" />
			</div>

			<div class="ls-l ls-mini-text"
				style="top: 338px; left: 35%; white-space: nowrap;"
				data-ls="
          fade: true; 
          fadeout: true; 
          durationout: 750; 
          easingin: easeOutQuint; 
          delayin: 300; 
          showuntil: 4000;
          ">
				<spring:message code="label.slide.Unique" />
				<br>
				<spring:message code="label.slide.harmonious" />
			</div>
		</div>
		<!-- slide one end -->

		<!-- slide two start -->
		<div class="ls-slide ls-slide2"
			data-ls="offsetxin: right; slidedelay: 7000; transition2d: 110,111,112,113;">

			<img
				src="${pageContext.request.contextPath}/assets/frontend/pages/img/layerslider/slide2/bg.jpg"
				class="ls-bg" alt="Slide background">

			<div class="ls-l ls-title"
				style="top: 40%; left: 21%; white-space: nowrap;"
				data-ls="
          fade: true; 
          fadeout: true;  
          durationin: 750; durationout: 109750; 
          easingin: easeOutQuint; 
          easingout: easeInOutQuint; 
          delayin: 0; 
          delayout: 0; 
          rotatein: 90; 
          rotateout: -90; 
          scalein: .5; 
          scaleout: .5; 
          showuntil: 4000;
          ">
				<spring:message code="label.slide.many" />
				<spring:message code="label.slide.models" />
			</div>

			<a href="#" class="ls-l ls-more"
				style="top: 72%; left: 21%; display: inline-block; white-space: nowrap;"
				data-ls="
          fade: true; 
          fadeout: true; 
          durationin: 750; 
          durationout: 750; 
          easingin: easeOutQuint; 
          easingout: easeInOutQuint; 
          delayin: 0; 
          delayout: 0; 
          rotatein: 90; 
          rotateout: -90; 
          scalein: .5; 
          scaleout: .5; 
          showuntil: 4000;"><spring:message
					code="label.slide.see" /> </a>
		</div>
		<!-- slide two end -->

		<!-- slide three start -->
		<div class="ls-slide ls-slide3"
			data-ls="offsetxin: right; slidedelay: 7000; transition2d: 92,93,105;">

			<img
				src="${pageContext.request.contextPath}/assets/frontend/pages/img/layerslider/slide3/bg.jpg"
				class="ls-bg" alt="Slide background">

			<div class="ls-l ls-title"
				style="top: 83px; left: 33%; white-space: nowrap;"
				data-ls="
          fade: true; 
          fadeout: true; 
          durationin: 750; 
          durationout: 750; 
          easingin: easeOutQuint; 
          rotatein: 90; 
          rotateout: -90; 
          scalein: .5; 
          scaleout: .5; 
          showuntil: 4000;
          ">
				<spring:message code="label.slide.sale" />
			</div>
			<div class="ls-l"
				style="top: 333px; left: 33%; white-space: nowrap; font-size: 20px; font: 20px 'Open Sans Light', sans-serif;"
				data-ls="
          fade: true; 
          fadeout: true; 
          durationout: 750; 
          easingin: easeOutQuint; 
          delayin: 300; 
          scalein: .8; 
          scaleout: .8; 
          showuntil: 4000;
          ">
				<a href="#" class="ls-buy"> <spring:message
						code="label.slide.buyitnow" />
				</a>
			</div>
		</div>
		<!-- slide three end -->

		<!-- slide four start -->
		<div class="ls-slide ls-slide4"
			data-ls="offsetxin: right; slidedelay: 7000; transition2d: 110,111,112,113;">

			<img
				src="${pageContext.request.contextPath}/assets/frontend/pages/img/layerslider/slide5/bg.jpg"
				class="ls-bg" alt="Slide background">

			<div class="ls-l ls-title"
				style="top: 35%; left: 60%; white-space: nowrap;"
				data-ls="
          fade: true; 
          fadeout: true; 
          durationin: 750; 
          durationout: 750; 
          easingin: easeOutQuint; 
          rotatein: 90; 
          rotateout: -90; 
          scalein: .5; 
          scaleout: .5; 
          showuntil: 4000;">
			</div>

			<div class="ls-l ls-mini-text"
				style="top: 70%; left: 60%; white-space: nowrap;"
				data-ls="
          fade: true; 
          fadeout: true;  
          durationout: 750; 
          easingin: easeOutQuint; 
          delayin: 300; 
          scalein: .8; 
          scaleout: .8; 
          showuntil: 4000;">
				<span><spring:message code="label.slide.themost" /></span> <a
					href="#"><spring:message code="label.slide.buyitnow" /></a>
			</div>

		</div>
		<!-- slide four end -->
	</div>
	<!-- LayerSlider end -->
</div>
<!-- END SLIDER -->

</html>