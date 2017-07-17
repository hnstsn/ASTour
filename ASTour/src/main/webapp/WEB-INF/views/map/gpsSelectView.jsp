<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/bootstap_collect.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script language="javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=fd655e71-f3de-3d91-bff1-dc590c5bb30c"></script>
<head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

.hn {font-family: 'Hanna';}
.jg { font-family: 'Jeju Gothic'; font-size: 35px;}
</style>
<!-- styleswitcher - demo only -->
<link href="${path}/resources/${path}/resources/assets/css/color_scheme/orange.css"
	rel="alternate stylesheet" type="text/css" title="orange" />
<link href="${path}/resources/assets/css/color_scheme/red.css" rel="alternate stylesheet"
	type="text/css" title="red" />
<link href="${path}/resources/assets/css/color_scheme/pink.css" rel="alternate stylesheet"
	type="text/css" title="pink" />
<link href="${path}/resources/assets/css/color_scheme/yellow.css"
	rel="alternate stylesheet" type="text/css" title="yellow" />
<link href="${path}/resources/assets/css/color_scheme/darkgreen.css"
	rel="alternate stylesheet" type="text/css" title="darkgreen" />
<link href="${path}/resources/assets/css/color_scheme/green.css"
	rel="alternate stylesheet" type="text/css" title="green" />
<link href="${path}/resources/assets/css/color_scheme/darkblue.css"
	rel="alternate stylesheet" type="text/css" title="darkblue" />
<link href="${path}/resources/assets/css/color_scheme/blue.css" rel="alternate stylesheet"
	type="text/css" title="blue" />
<link href="${path}/resources/assets/css/color_scheme/brown.css"
	rel="alternate stylesheet" type="text/css" title="brown" />
<link href="${path}/resources/assets/css/color_scheme/lightgrey.css"
	rel="alternate stylesheet" type="text/css" title="lightgrey" />
<!-- /styleswitcher - demo only -->
<link href="${path}/resources/assets/plugins/styleswitcher/styleswitcher.css" rel="stylesheet" type="text/css" />		

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- STYLESWITCHER - REMOVE ON PRODUCTION/DEVELOPMENT -->
	<div id="switcher" style="overflow: auto; height: 500px">
		<div class="content-switcher">
			<h4 class="jg">흔적리스트</h4>
			<c:forEach var="list" items="${list }">
				<p onclick="f1('${list.label_record }')">${list.label_record }</p>
			</c:forEach>
			
			<div id="hideSwitcher">&times;</div>
		</div>
	</div>

	<div id="showSwitcher" class="styleSecondColor">
		<i class="fa fa-angle-double-right"></i>
	</div>
	<!-- /STYLESWITCHER -->


	<div id="wrapper">
	<header id="page-title">
			<div class="container">
				<h1 class="hn" style="font-size: 35px">흔적보기</h1>
			</div>
	</header>
	<div id="test"></div>
	<div id="map" style="width:100%;height:350px;"></div>
	<div style="margin-top: 13.6%"></div>
</div>
</body>

<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=3e0a1d6ea303156f75ac023290071948&libraries=services"></script>

<script type="text/javascript">
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new daum.maps.LatLng(37.4948367, 127.0284598), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};
//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new daum.maps.Map(mapContainer, mapOption); 
var polyline=null;
var linePath=null;
var ct=0;
function f1(title){
	var pk ='${sessionScope.member.mpk}';
		$.ajax({
		url : "${path}/gpsSelect", //접근해야할 아이디 
		type : "post", //전송방식
		dataType : "json", //json타입으로 요청
		data : {"title":title,"pk":pk},
		success : function(Data) {  //날라온 데이터를 받아줌
			//기존 맵 선 지우기
				if (ct == 1) {
					polyline.setMap(null);
				}
				ct=1; //처음에 온건지 안온건지 알기 위해서 선언
			linePath = [];
			for(var a=0;a<Data.length;a++){
				linePath.push(new daum.maps.LatLng(Data[a].latitude_record,Data[a].longitude_record));
			}
			polyline = new daum.maps.Polyline({
			path : linePath, // 선을 구성하는 좌표배열 입니다
			strokeWeight : 5, // 선의 두께 입니다
			strokeColor : '#FFAE00', // 선의 색깔입니다
			strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle : 'solid' // 선의 스타일입니다
			});

			// 지도에 선을 표시합니다 
			polyline.setMap(map);
			// 표시 된 선 줌 
			var bounds = new daum.maps.LatLngBounds();    
			for(var i = 0; i < linePath.length; i++){
				 bounds.extend(linePath[i]);
			}
			map.setBounds(bounds);
			} 
	});	
}
</script>
</html>