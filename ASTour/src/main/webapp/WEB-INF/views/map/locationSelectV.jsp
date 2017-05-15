<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>Atropos - Responsive Multipurpose</title>
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

<!-- AST : bootstrap을 위한 것들을 모아놓은  jsp page -->
<!--..은 현재에서 한단계 상위  -->
	<%@ include file="../include/bootstap_collect.jsp" %>
	
</head>
<body>
	<!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="resources/assets/images/boxed_background/1.jpg"  -->

	<!-- AST : menu부분을 위한 jsp page -->
	<%@ include file="../include/menu.jsp" %>

	<!-- <span id="header_shadow"></span> -->
	<!-- /TOP NAV -->

	<!-- WRAPPER -->
	<div id="wrapper">


		<!-- FILTER BOX -->
		<section class="container re-filterbox no-top" style="margin-top: 100px;">
			<!-- add "styleBackground" class for colored box -->

			<form id="re-filter" action="realestate-list.html" method="get">
				<div class="row">
					<div class="form-group">

						<div class="col-md-2 col-sm-6 col-xs-12">
							<label>Property ID</label> <input type="text"
								class="form-control" name="re_id" />
						</div>

						<div class="col-md-4 col-sm-6 col-xs-12">
							<label>지역</label> <select class="form-control" name="re_location">
								<option value="0">모두</option>
								<option value="1">서울</option>
								<option value="2">부산</option>
								<option value="3">Las Vegas</option>
								<option value="4">Palo Alto, SA</option>
								<option value="5">Silcon Valey, SA</option>
							</select>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<label>지역세부</label> <select class="form-control" name="re_type">
								<option value="0">모두</option>
								<option value="1">Apartment</option>
								<option value="2">Villa</option>
								<option value="3">Family House</option>
								<option value="4">Condo</option>
								<option value="5">Cottage</option>
								<option value="6">Building Area</option>
								<option value="7">Single Home</option>
							</select>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<label>이벤트</label> <select class="form-control" name="re_status">
								<option value="0">모두</option>
								<option value="1">하는중</option>
								<option value="2">예정</option>
							</select>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="form-group">

						<div class="col-md-2 col-sm-6 col-xs-6">
							<label>Baths</label> <select class="form-control" name="re_baths">
								<option value="0">Any</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10+">10+</option>
							</select>
						</div>

						<div class="col-md-2 col-sm-6 col-xs-6">
							<label>Price To</label> <select class="form-control"
								name="re_price_to">
								<option value="0">Any</option>
								<option value="1000">$1000</option>
								<option value="2000">$2000</option>
								<option value="3000">$3000</option>
								<option value="5000">$5000</option>
								<option value="10000">$10000</option>
								<option value="2000">$2000</option>
								<option value="100000">$100000</option>
								<option value="300000">$300000</option>
								<option value="1000000+">1000000+</option>
							</select>
						</div>

						<div class="col-md-4 col-sm-12 col-xs-12">
							<label>&nbsp;</label>
							<button class="btn btn-primary fullwidth">해당위치로 검색</button>
						</div>
					</div>
				</div>

			</form>


		</section>
		<!-- /FILTER BOX -->


		<!-- PAGE TITLE -->


		<!--
		class="nopadding" 
		margin-left: 300px; margin-right: 300px;  -->


		<section class="container">
			<div class="row">

				<!--내코  -->
				<div class="col-md-3">

					<ul class="nav nav-list">
						<li><a href="shortcodes-rows.html"><i
								class="fa fa-circle-o"></i> Rows</a></li>
						<li><a href="shortcodes-counters.html"><i
								class="fa fa-circle-o"></i> Counters</a></li>
						<li><a href="shortcodes-toggles.html"><i
								class="fa fa-circle-o"></i> Toggles</a></li>
						<li><a href="shortcodes-forms.html"><i
								class="fa fa-circle-o"></i> Forms</a></li>
						<li><a href="shortcodes-editor.html"><i
								class="fa fa-circle-o"></i><span
								class="label label-warning pull-right">New</span> HTMl Editor</a></li>
						<li><a href="shortcodes-buttons.html"><i
								class="fa fa-circle-o"></i> Buttons</a></li>
						<li><a href="shortcodes-tabs-and-accordions.html"><i
								class="fa fa-circle-o"></i> Tabs &amp; Accordions</a></li>
						<li><a href="shortcodes-callouts.html"><i
								class="fa fa-circle-o"></i> Callouts</a></li>
						<li><a href="shortcodes-dividers.html"><i
								class="fa fa-circle-o"></i> Dividers</a></li>
						<li><a href="shortcodes-lightbox.html"><i
								class="fa fa-circle-o"></i> Lightbox</a></li>
						<li><a href="shortcodes-icons-and-boxes.html"><i
								class="fa fa-circle-o"></i> Icons &amp; Boxes</a></li>
						<li><a href="shortcodes-carousel.html"><i
								class="fa fa-circle-o"></i> Carousel</a></li>
						<li><a href="shortcodes-progress-bars.html"><i
								class="fa fa-circle-o"></i> Progress Bars</a></li>
						<li><a href="shortcodes-alerts.html"><i
								class="fa fa-circle-o"></i> Alerts</a></li>
						<li><a href="shortcodes-video.html"><i
								class="fa fa-circle-o"></i> Video</a></li>
						<li><a href="shortcodes-tooltips-and-popover.html"><i
								class="fa fa-circle-o"></i> Tooltips &amp; Popover</a></li>
						<li><a href="shortcodes-modals.html"><i
								class="fa fa-circle-o"></i> Modals</a></li>
					</ul>

				</div>
				<!--내코끝  -->



				<div id="gmap" class="col-md-9"></div>
				<!--api 키 인증  -->
				<script type="text/javascript"
					src="//apis.daum.net/maps/maps3.js?apikey=3e0a1d6ea303156f75ac023290071948"></script>
				<!--추가 라이브러리 불러오기  -->
				<script type="text/javascript"
					src="//apis.daum.net/maps/maps3.js?apikey=3e0a1d6ea303156f75ac023290071948&libraries=services,clusterer,drawing"></script>
				<script>
					var mapContainer = document.getElementById('gmap'), // 지도를 표시할 div 
						mapOption = {
							center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							level : 3 // 지도의 확대 레벨
						};
				
					var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				
					// 마커가 표시될 위치입니다 
					var markerPosition = new daum.maps.LatLng(33.450701, 126.570667);
				
					// 마커를 생성합니다
					var marker = new daum.maps.Marker({
						position : markerPosition
					});
				
					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
				
					// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
					// marker.setMap(null);    
				
				
					// 이미지 바꾼 마커
					// 마커가 표시될 위치입니다 
					var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
						imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
						imageOption = {
							offset : new daum.maps.Point(27, 69)
						}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
				
					// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
					var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption),
						markerPosition = new daum.maps.LatLng(33.450701, 126.573667); // 마커가 표시될 위치입니다
				
					// 마커를 생성합니다
					var marker2 = new daum.maps.Marker({
						position : markerPosition,
						image : markerImage // 마커이미지 설정 
					});
				
					// 마커가 지도 위에 표시되도록 설정합니다
					marker2.setMap(map);
				
					// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
					var iwContent = '<div style="padding:5px;">Hello World!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
						iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
				
					// 인포윈도우를 생성합니다
					var infowindow = new daum.maps.InfoWindow({
						content : iwContent,
						removable : iwRemoveable
					});
				
					// 마커에 클릭이벤트를 등록합니다
					daum.maps.event.addListener(marker, 'click', function() {
						// 마커 위에 인포윈도우를 표시합니다
						infowindow.open(map, marker);
					});
				
					// 마커에 클릭이벤트를 등록합니다
					daum.maps.event.addListener(marker2, 'click', function() {
						// 마커 위에 인포윈도우를 표시합니다
						infowindow.open(map, marker2);
					});
				</script>


			</div>
		</section>



	</div>
	<!-- /WRAPPER -->



	<!-- FOOTER -->
	<footer>

		<!-- copyright , scrollTo Top -->
		<div class="footer-bar">
			<div class="container">
				<span class="copyright">Copyright &copy; Your Company, LLC .
					All Rights Reserved.</span> <a class="toTop" href="#topNav">BACK TO
					TOP <i class="fa fa-arrow-circle-up"></i>
				</a>
			</div>
		</div>
		<!-- copyright , scrollTo Top -->


		<!-- footer content -->
		<div class="footer-content">
			<div class="container">

				<div class="row">


					<!-- FOOTER CONTACT INFO -->
					<div class="column col-md-4">
						<h3>CONTACT</h3>

						<p class="contact-desc">Atropos is a very powerful HTML5
							template, you will be able to create an awesome website in a very
							simple way.</p>
						<address class="font-opensans">
							<ul>
								<li class="footer-sprite address">PO Box 21132<br /> Here
									Weare St, Melbourne<br /> Vivas 2355 Australia<br />
								</li>
								<li class="footer-sprite phone">Phone: 1-800-565-2390</li>
								<li class="footer-sprite email"><a
									href="mailto:support@yourname.com">support@yourname.com</a></li>
							</ul>
						</address>

					</div>
					<!-- /FOOTER CONTACT INFO -->


					<!-- FOOTER LOGO -->
					<div class="column logo col-md-4 text-center">
						<div class="logo-content">
							<img class="animate_fade_in"
								src="resources/assets/images/logo_footer.png" width="200" alt="" />
							<h4>ATROPOS TEMPLATE</h4>
						</div>
					</div>
					<!-- /FOOTER LOGO -->


					<!-- FOOTER LATEST POSTS -->
					<div class="column col-md-4 text-right">
						<h3>RECENT POSTS</h3>

						<div class="post-item">
							<small>JANUARY 2, 2014 BY ADMIN</small>
							<h3>
								<a href="blog-post.html">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit</a>
							</h3>
						</div>
						<div class="post-item">
							<small>JANUARY 2, 2014 BY ADMIN</small>
							<h3>
								<a href="blog-post.html">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit</a>
							</h3>
						</div>
						<div class="post-item">
							<small>JANUARY 2, 2014 BY ADMIN</small>
							<h3>
								<a href="blog-post.html">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit</a>
							</h3>
						</div>

						<a href="blog-masonry-sidebar.html" class="view-more pull-right">View
							Blog <i class="fa fa-arrow-right"></i>
						</a>

					</div>
					<!-- /FOOTER LATEST POSTS -->

				</div>

			</div>
		</div>
		<!-- footer content -->

	</footer>
	<!-- /FOOTER -->



	<!-- JAVASCRIPT FILES -->
	<script type="text/javascript"
		src="resources/assets/plugins/jquery-2.1.3.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/jquery.easing.1.3.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/jquery.cookie.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/jquery.appear.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/jquery.isotope.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/masonry.js"></script>

	<script type="text/javascript"
		src="resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/stellar/jquery.stellar.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/knob/js/jquery.knob.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/jquery.backstretch.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/superslides/dist/jquery.superslides.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/styleswitcher/styleswitcher.js"></script>
	<!-- STYLESWITCHER - REMOVE ON PRODUCTION/DEVELOPMENT -->


	<script type="text/javascript" src="resources/assets/js/scripts.js"></script>

	<!-- AJAX CONTACT -->
	<script type="text/javascript"
		src="resources/assets/js/contact_ajax.js"></script>

	<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information. -->
	<!--<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', 'UA-XXXXX-X', 'domainname.com');
			ga('send', 'pageview');
		</script>
		-->

</body>
</html>