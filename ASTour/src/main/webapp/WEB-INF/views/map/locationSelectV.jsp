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

	<style>
	/*  AST : 마커클릭후의 오버레이의 스타일을 정의한다   */
		.wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
	    .wrap * {padding: 0;margin: 0;}
	    .wrap .info {width: 500px;height: 300px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
	    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
	    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
	    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
	    .info .close:hover {cursor: pointer;}
	    .info .body {position: relative;overflow: hidden;}
	    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
	    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
	    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
	    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
	    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	    .info .link {color: #5085BB;} 
	    
	/* AST : 지도크기 조절하는 +,- 스타일을 정의한다. */	    
 html, body {width:100%;height:100%;margin:0;padding:0;}
.map_wrap {position:relative;overflow:hidden;width:100%;height:800px;}
.radius_border{border:1px solid #919191;border-radius:5px;}     
.custom_typecontrol {position:absolute;top:10px;right:10px;overflow:hidden;width:130px;height:30px;margin:0;padding:0;z-index:1;font-size:12px;font-family:'Malgun Gothic', '맑은 고딕', sans-serif;}
.custom_typecontrol span {display:block;width:65px;height:30px;float:left;text-align:center;line-height:30px;cursor:pointer;}
.custom_typecontrol .btn {background:#fff;background:linear-gradient(#fff,  #e6e6e6);}       
.custom_typecontrol .btn:hover {background:#f5f5f5;background:linear-gradient(#f5f5f5,#e3e3e3);}
.custom_typecontrol .btn:active {background:#e6e6e6;background:linear-gradient(#e6e6e6, #fff);}    
.custom_typecontrol .selected_btn {color:#fff;background:#425470;background:linear-gradient(#425470, #5b6d8a);}
.custom_typecontrol .selected_btn:hover {color:#fff;}   
.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
.custom_zoomcontrol span img {width:15px;height:39px;padding:12px 0;border:none;}             
.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;}   
	</style>
</head>

<body>
	<!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="resources/assets/images/boxed_background/1.jpg"  -->

	<!-- AST : menu부분을 위한 jsp page -->
	<%@ include file="../include/menu.jsp" %>

	<!-- WRAPPER -->
	<div id="wrapper">
	

		<!-- FILTER BOX -->
		<section class="container re-filterbox no-top" style="margin-top: 100px;">
			<!-- add "styleBackground" class for colored box -->

			<form id="re-filter" action="realestate-list.html" method="get">
				<div class="row">
					<div class="form-group">

						<div class="col-md-4 col-sm-6 col-xs-12">
							<label>지역</label> <select class="form-control" name="re_location">
								<option value="0">모두</option>
								<option value="1">서울</option>
								<option value="2">부산</option>
								
							</select>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<label>지역세부</label> <select class="form-control" name="re_type">
								<option value="0">모두</option>
								<option value="1">Apartment</option>
								<option value="2">Villa</option>
								<option value="3">Family House</option>
								<option value="4">Condo</option>
							
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
							<label>기타1</label> <select class="form-control" name="re_baths">
								<option value="0">Any</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							
							</select>
						</div>

						<div class="col-md-2 col-sm-6 col-xs-6">
							<label>기타2</label> <select class="form-control"
								name="re_price_to">
								<option value="0">Any</option>
								<option value="1000">$1000</option>
								<option value="2000">$2000</option>
								<option value="3000">$3000</option>
								<option value="5000">$5000</option>
							
							</select>
						</div>
						
						<div class="col-md-2 col-sm-6 col-xs-12">
							<label>관광지명</label> <input type="text"
								class="form-control" name="re_id" />
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
		
		
		<!-- 구분하는 줄 긋기  -->
		<div class="divider"><!-- divider -->
					<i class="fa fa-leaf"></i>
				</div>


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
						<li>
							
							
						
						
						</li>
						<li><a href="shortcodes-tooltips-and-popover.html"><i
								class="fa fa-circle-o"></i> Tooltips &amp; Popover</a></li>
						<li><a href="shortcodes-modals.html"><i
								class="fa fa-circle-o"></i> Modals</a></li>
					</ul>

				</div>
				<!--내코끝  -->



				<div class="col-md-9">
					<div class="map_wrap">
						 <div id="gmap" sytle="width: 100%; height: 700px; position:relative; overflow:visible;"></div>
						 <div class="custom_zoomcontrol radius_border"> 
					        <span onclick="zoomIn()"><img height="39px" src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
					        <span onclick="zoomOut()"><img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
					     </div>
						
					</div> 
				</div>
				<!--api 키 인증  -->
				<script type="text/javascript"
					src="//apis.daum.net/maps/maps3.js?apikey=3e0a1d6ea303156f75ac023290071948"></script>
				<!--추가 라이브러리 불러오기  -->
				<script type="text/javascript"
					src="//apis.daum.net/maps/maps3.js?apikey=3e0a1d6ea303156f75ac023290071948&libraries=services,clusterer,drawing"></script>
				<script>
		var mapContainer = document.getElementById('gmap'), // 지도를 표시할 div 
			mapOption = {
				center : new daum.maps.LatLng(37.579634, 126.976955), // 지도의 중심좌표
				level : 3 // 지도의 확대 레벨
			};
	
		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
		// 마커가 표시될 위치입니다 
		var markerPosition = new daum.maps.LatLng(37.579634, 126.976955);
	
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

		
		//마커가 클릭된 상태이면 지도클릭이벤트를 막는다.
		var markerClick=false;
		
		//지도 클릭 이벤트 : 클릭된 중심으로부터 원그리기
		var circle;
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {
				if (markerClick == false) {
					
					//이전에 원이 있으면 지운다.
					if(circle!=null){
						circle.setMap(null);
					}
					
					var mousePosition = mouseEvent.latLng;
					circle = new daum.maps.Circle({
						center : mousePosition, // 원의 중심좌표 입니다 
						radius : 1000, // 미터 단위의 원의 반지름입니다 
						strokeWeight : 5, // 선의 두께입니다 
						strokeColor : '#75B8FA', // 선의 색깔입니다
						strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
						strokeStyle : 'dashed', // 선의 스타일 입니다
						fillColor : '#CFE7FF', // 채우기 색깔입니다
						fillOpacity : 0.2 // 채우기 불투명도 입니다   
					});
					circle.setMap(map);
				}
			});
	
	
			//커스텀 오버레이
			var content = '<div class="wrap">' +
			'    <div class="info">' +
			'        <div class="title">' +
			'           경복궁' +
			'            <div class="close" onclick="closeOverlay()" title="닫기"></div>' +
			'        </div>' +
			'        <div class="body">' +
			'            <div class="img">' +
			'                <img src="https://lh4.googleusercontent.com/proxy/fBbACHhSGHYVwVIHQIbMBAuf80D0PBmn0xbL8evKS_cjHUP6os0YAD-P1Teg2eDAearjZWHz5oOtpHgadRHGynkAh8Q_djH7LBWh8_BOEyNy7WLWm76BQv4Luc93ZwjwW9X85hTJNwHxxLRRPHlMsMvqgddLiQ=w408-h251-k-no" width="73" height="70">' +
			'           </div>' +
			'            <div class="desc">' +
			'                <div class="ellipsis">주소1</div>' +
			'                <div class="jibun ellipsis">주소2</div>' +
			'                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a>'+  
			'				 <a href="http://www.kakaocorp.com/main" target="_blank" class="link">상세보기</a></div>' +
			'            </div>' +
			'        </div>' +
			'    </div>' +
			'</div>';
	
		//마커 위에 커스텀오버레이를 표시합니다
		//마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlay = new daum.maps.CustomOverlay({
			content : content,
			map : map,
			position : marker.getPosition()
		});
	
		//마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		daum.maps.event.addListener(marker, 'click', function() {
			
			overlay.setMap(map);
			markerClick = true;
		});
	
		//커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		function closeOverlay() {
			overlay.setMap(null);
			markerClick = false;
		}
		
		//시작할때는 오버레이를 꺼둔다
		overlay.setMap(null);
		
		// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
		function zoomIn() {
		    map.setLevel(map.getLevel() - 1);
		}

		// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
		function zoomOut() {
		    map.setLevel(map.getLevel() + 1);
		}
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