<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/bootstap_collect.jsp"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

.hn {
	font-family: 'Hanna';
}

.jg {
	font-family: 'Jeju Gothic';
	font-size: 30px;
}

hr.two {
	width: 100%;
	color: green;
	border: thin solid red;
}

p.thicker {
	font-weight: 900;
	line-height: 2.0em;
}
</style>

<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 350px;
}

#category {
	position: absolute;
	top: 10px;
	left: 10px;
	border-radius: 5px;
	border: 1px solid #909090;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
	background: #fff;
	overflow: hidden;
	z-index: 2;
}

#category li {
	float: left;
	list-style: none;
	width: 50px; px;
	border-right: 1px solid #acacac;
	padding: 6px 0;
	text-align: center;
	cursor: pointer;
}

#category li.on {
	background: #eee;
}

#category li:hover {
	background: #ffe6e6;
	border-left: 1px solid #acacac;
	margin-left: -1px;
}

#category li:last-child {
	margin-right: 0;
	border-right: 0;
}

#category li span {
	display: block;
	margin: 0 auto 3px;
	width: 27px;
	height: 28px;
}

#category li .category_bg {
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png)
		no-repeat;
}

#category li .bank {
	background-position: -10px 0;
}

#category li .mart {
	background-position: -10px -36px;
}

#category li .pharmacy {
	background-position: -10px -72px;
}

#category li .oil {
	background-position: -10px -108px;
}

#category li .cafe {
	background-position: -10px -144px;
}

#category li .store {
	background-position: -10px -180px;
}

#category li.on .category_bg {
	background-position-x: -46px;
}

.placeinfo_wrap {
	position: absolute;
	bottom: 28px;
	left: -150px;
	width: 300px;
}

.placeinfo {
	position: relative;
	width: 100%;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	padding-bottom: 10px;
	background: #fff;
}

.placeinfo:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.placeinfo_wrap .after {
	content: '';
	position: relative;
	margin-left: -12px;
	left: 50%;
	width: 22px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.placeinfo a, .placeinfo a:hover, .placeinfo a:active {
	color: #fff;
	text-decoration: none;
}

.placeinfo a, .placeinfo span {
	display: block;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.placeinfo span {
	margin: 5px 5px 0 5px;
	cursor: default;
	font-size: 13px;
}

.placeinfo .title {
	font-weight: bold;
	font-size: 14px;
	border-radius: 6px 6px 0 0;
	margin: -1px -1px 0 -1px;
	padding: 10px;
	color: #fff;
	background: #d95050;
	background: #d95050
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.placeinfo .tel {
	color: #0f7833;
}

.placeinfo .jibun {
	color: #999;
	font-size: 11px;
	margin-top: 0;
}

.btn_comm {float:left;display:block;width:70px;height:27px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/sample_button_control.png) no-repeat}
.btn_resetMap {background-position:-69px 0;}
.screen_out {display:block;overflow:hidden;position:absolute;left:-9999px;width:1px;height:1px;font-size:0;line-height:0;text-indent:-9999px}
</style>


<meta charset="utf-8" />
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

<!-- mobile settings -->
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
</head>

<%--  <jsp:include page="../include/menu.jsp" /> --%>
<!-- WRAPPER -->
<div id="wrapper">
	<div id="shop">
		<!-- PAGE TITLE -->
		<header id="page-title">
			<div class="container">
				<h1 class="hn" style="font-size: 35px">상세보기</h1>
			</div>
		</header>

		<section class="container">

			<div class="row">
				<div class="col-sm-6 col-md-6">
					<div class="owl-carousel controlls-over product-image"
						data-plugin-options='{"items": 1, "singleItem": true, "navigation": true, "pagination": true, "transitionStyle":"fadeUp"}'>
						<div class="container">
							<img src="${path}/resources/image/culture/${list[0].aimage }"
								class="img-rounded" width="525" height="400">
						</div>
					</div>
				</div>

				<div class="col-sm-6 col-md-6">
					<!-- product detail -->
					<form class="form-inline productDescription noajax" method="get"
						action="shop-cart.html" role="form">

						<!-- hidden fields -->
						<input type="hidden" name="action" value="cart_add" /> <input
							type="hidden" name="product_id" value="1" />

						<!-- product description -->
						<div class="container">
							<h2 class="jg" style="font-size: 35px">${list[0].atitle }</h2>
						</div>
						<div class="well well-sm" style="width: 100%">
							<ul>
								<li>
									<h5 class="jg" style="font-size: 15px">주소 :
										${list[0].acity } ${list[0].agu } ${list[0].aaddress }</h5>
								</li>
							</ul>
						</div>
						<div class="well well-sm" style="width: 100%">
							<ul>
								<li>
									<h5 class="jg" style="font-size: 15px">문의 : ${list[0].atel }</h5>
								</li>
							</ul>
						</div>
						<div class="well well-sm" style="width: 100%">
							<ul>
								<li>
									<h5 class="jg" style="font-size: 15px">${list[0].aintro}</h5>
								</li>
							</ul>
						</div>
						<div class="well well-sm" style="width: 100%">
							<ul>
								<li>
									<h5 class="jg" style="font-size: 15px">
										홈페이지: <a href="${list[0].ahomepage }" target=_blank>${list[0].ahomepage }</a>
									</h5>
								</li>
							</ul>
						</div>


						<!-- /product description -->
					</form>
					<!-- product detail -->
					<div style="margin-top: 10%" align="center">
						<form action="${path }/reViewList.do" method="post">
							<input type="hidden" name="review_AIMAGE"
								value="${list[0].aimage }"> <input type="hidden"
								name="review_ATITLE" value="${list[0].atitle }"> <input
								type="submit" class="btn btn-success" value="관련리뷰보기">
						</form>
					</div>
				</div>
			</div>
			<hr class="two" />
			<div class="well well-sm" style="width: 100%;">
				<p class="jg" style="font-size: 17px; line-height: 2.0em;">${list[0].acontent }</p>
			</div>
			<hr />
			<!-- 맵 카테고리 -->
			<p style="margin-top: -12px"></p>
			<div class="map_wrap">
				<div id="map"
					style="width: 100%; height: 150%; position: relative; overflow: hidden;"></div>
				<!-- <ul id="category">
					<li id="BK9" data-order="0"><span class="category_bg bank"></span>
						은행</li>
					<li id="MT1" data-order="1"><span class="category_bg mart"></span>
						마트</li>
					<li id="FD6" data-order="1">음식점</li>
					<li id="AD5" data-order="1">숙박</li>
					<li id="CE7" data-order="4"><span class="category_bg cafe"></span>
						카페</li>
					<li id="CS2" data-order="5"><span class="category_bg store"></span>
						편의점</li>
				</ul> -->
				<ul id="category">
					<li id="BK9" data-order="0">은행</li>
					<li id="MT1" data-order="0">마트</li>
					<li id="FD6" data-order="0">음식점</li>
					<li id="AD5" data-order="0">숙박</li>
					<li id="CE7" data-order="0">카페</li>
					<li id="CS2" data-order="0">편의점</li>
				</ul>
				<a class="btn_comm btn_resetMap" onclick="setBounds()">
								<span class="screen_out">초기화</span></a>
			</div>
			<!-- /맵 카테고리  -->
			<div style="padding-bottom: 150px"></div>
		</section>
	</div>
</div>


<!-- /WRAPPER -->
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=3e0a1d6ea303156f75ac023290071948&libraries=services"></script>
<script>
	//마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
	var placeOverlay = new daum.maps.CustomOverlay({
		zIndex : 1
	}), contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
	markers = [], // 마커를 담을 배열입니다
	currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new daum.maps.LatLng("${list[0].alatitude}",
				"${list[0].alongitude}"), // 지도의 중심좌표
		level : 5
	// 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	var map = new daum.maps.Map(mapContainer, mapOption);

	// 장소 검색 객체를 생성합니다
	var ps = new daum.maps.services.Places(map);

	// 지도에 idle 이벤트를 등록합니다
	daum.maps.event.addListener(map, 'idle', searchPlaces);

	// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
	contentNode.className = 'placeinfo_wrap';

	// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
	// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
	addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
	addEventHandle(contentNode, 'touchstart', daum.maps.event.preventMap);

	// 커스텀 오버레이 컨텐츠를 설정합니다
	placeOverlay.setContent(contentNode);

	// 각 카테고리에 클릭 이벤트를 등록합니다
	addCategoryClickEvent();

	// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
	function addEventHandle(target, type, callback) {
		if (target.addEventListener) {
			target.addEventListener(type, callback);
		} else {
			target.attachEvent('on' + type, callback);
		}
	}

	// 카테고리 검색을 요청하는 함수입니다
	function searchPlaces() {
		if (!currCategory) {
			return;
		}

		// 커스텀 오버레이를 숨깁니다 
		placeOverlay.setMap(null);

		// 지도에 표시되고 있는 마커를 제거합니다
		removeMarker();

		ps.categorySearch(currCategory, placesSearchCB, {
			useMapBounds : true
		});
	}

	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(status, data, pagination) {
		if (status === daum.maps.services.Status.OK) {

			// 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
			displayPlaces(data.places);
		} else if (status === daum.maps.services.Status.ZERO_RESULT) {
			// 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

		} else if (status === daum.maps.services.Status.ERROR) {
			// 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요

		}
	}

	// 지도에 마커를 표출하는 함수입니다
	function displayPlaces(places) {

		// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
		// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
		var order = document.getElementById(currCategory).getAttribute(
				'data-order');

		for (var i = 0; i < places.length; i++) {

			// 마커를 생성하고 지도에 표시합니다
			var marker = addMarker(new daum.maps.LatLng(places[i].latitude,
					places[i].longitude), order);

			// 마커와 검색결과 항목을 클릭 했을 때
			// 장소정보를 표출하도록 클릭 이벤트를 등록합니다
			(function(marker, place) {
				daum.maps.event.addListener(marker, 'click', function() {
					displayPlaceInfo(place);
				});
			})(marker, places[i]);
		}
	}

/*         var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다
                imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
                imageOption = {offset: new daum.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
 
        var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption);
        marker.setMap(map); // 지도 위에 마커를 표출합니다
		markers.push(marker); // 배열에 생성된 마커를 추가합니다

		return marker;
    } */
	
 // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
 	function addMarker(position, order) {
 		var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
 		imageSize = new daum.maps.Size(25, 32), // 마커 이미지의 크기
 		imgOptions = {
 			offset: new daum.maps.Point(27, 69)
 		// 마커 좌표에 일치시킬 이미지 내에서의 좌표
 		}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
 				imgOptions), marker = new daum.maps.Marker({
 			position : position, // 마커의 위치
 			image : markerImage
 		});

 		marker.setMap(map); // 지도 위에 마커를 표출합니다
 		markers.push(marker); // 배열에 생성된 마커를 추가합니다

 		return marker;
 	}
/* 
	
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, order) {
		var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		imageSize = new daum.maps.Size(27, 28), // 마커 이미지의 크기
		imgOptions = {
			spriteSize : new daum.maps.Size(72, 208), // 스프라이트 이미지의 크기
			spriteOrigin : new daum.maps.Point(46, (order * 36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
			offset : new daum.maps.Point(11, 28)
		// 마커 좌표에 일치시킬 이미지 내에서의 좌표
		}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
				imgOptions), marker = new daum.maps.Marker({
			position : position, // 마커의 위치
			image : markerImage
		});

		marker.setMap(map); // 지도 위에 마커를 표출합니다
		markers.push(marker); // 배열에 생성된 마커를 추가합니다

		return marker;
	} */

	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(null);
		}
		markers = [];
	}

	// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
	function displayPlaceInfo(place) {
		
		var content = '<div class="placeinfo">'
				+ '   <a class="title" href="' + place.placeUrl + '" target="_blank" title="' + place.title + '">'
				+ place.title + '</a>';
		
		if (place.newAddress) {
			content += '    <span title="' + place.newAddress + '">'
					+ place.newAddress
					+ '</span>'
					+ '  <span class="jibun" title="' + place.address + '">(지번 : '
					+ place.address + ')</span>';
		} else {
			content += '    <span title="' + place.address + '">'
					+ place.address + '</span>';
		}
		content += '<span class="tel">' + place.phone + '</span>'
				+ '</div>';

		contentNode.innerHTML = content;
		placeOverlay.setPosition(new daum.maps.LatLng(place.latitude,
				place.longitude));
		
		placeOverlay.setMap(map);
		
	}

	// 각 카테고리에 클릭 이벤트를 등록합니다
	function addCategoryClickEvent() {
		var category = document.getElementById('category'), children = category.children;

		for (var i = 0; i < children.length; i++) {
			children[i].onclick = onClickCategory;
		}
	}

	// 카테고리를 클릭했을 때 호출되는 함수입니다
	function onClickCategory() {
		var id = this.id, className = this.className;

		placeOverlay.setMap(null);

		if (className === 'on') {
			currCategory = '';
			changeCategoryClass();
			removeMarker();
		} else {
			currCategory = id;
			changeCategoryClass(this);
			searchPlaces();
		}
	}

	// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
	function changeCategoryClass(el) {
		var category = document.getElementById('category'), children = category.children, i;

		for (i = 0; i < children.length; i++) {
			children[i].className = '';
		}

		if (el) {
			el.className = 'on';
		}
	}

	// AST : 마커 설정
	var absmarker = new daum.maps.Marker({
		position : new daum.maps.LatLng("${list[0].alatitude}",
				"${list[0].alongitude}"),
		map : map
	});
	
	 
	
	
	// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
	var iwContent ='<div style="text-align: center;">'
		+ '${list[0].atitle}'
		+ '<div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	iwRemoveable = true; // removeable 속성을 true 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

	// 인포윈도우를 생성합니다
	var infowindow = new daum.maps.InfoWindow({
		content : iwContent,
		removable : iwRemoveable
	});

	// 마커에 클릭이벤트를 등록합니다
	daum.maps.event.addListener(absmarker, 'click', function() {
		// 마커 위에 인포윈도우를 표시합니다
		infowindow.open(map, absmarker);
	});

	// 버튼을 클릭하면 아래 배열의 좌표들이 모두 보이게 지도 범위를 재설정합니다 
	var points = new daum.maps.LatLng("${list[0].alatitude}",
			"${list[0].alongitude}");

	// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
	var bounds = new daum.maps.LatLngBounds();

	// 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
	var marker = new daum.maps.Marker({
		position : points
	});

	// LatLngBounds 객체에 좌표를 추가합니다
	bounds.extend(points);

	function setBounds() {
		// LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
		// 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
		map.setBounds(bounds);
		map.setLevel(5);
	}

	map.setMap(absmarker);
</script>

</html>