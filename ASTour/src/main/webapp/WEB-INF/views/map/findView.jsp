<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/bootstap_collect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script language="javascript" src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=fd655e71-f3de-3d91-bff1-dc590c5bb30c"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var map;
//초기화 함수
function initTmap(){
  map = new Tmap.Map({div:'map_div',
                      width:'100%', 
                      height:'400px',
                      transitionEffect:"resize",
                      animation:true
                  }); 
  map.addControl(new Tmap.Control.MousePosition());
  searchRoute();
};

//경로 정보 로드
function searchRoute(){
  var routeFormat = new Tmap.Format.KML({extractStyles:true, extractAttributes:true});

  var startX = 14129105.461214;
  var startY = 4517042.1926406;
  var endX = 14136027.789587;
  var endY = 4517572.4745242;
  var startName = "출발";
  var endName = "도착";
  var urlStr = "https://apis.skplanetx.com/tmap/routes/pedestrian?version=1&format=xml";
 	  urlStr += "&startX="+126.975303;
 	  urlStr += "&startY="+37.55995;
  	  urlStr += "&endX="+127.027651;
  	  urlStr += "&endY="+37.497914;
      urlStr += "&startName="+encodeURIComponent(startName);
      urlStr += "&endName="+encodeURIComponent(endName);
      urlStr += "&reqCoordType=EPSG3857";
      urlStr += "&resCoordType=EPSG3857";
      urlStr += "&appKey=fd655e71-f3de-3d91-bff1-dc590c5bb30c";
      
  var prtcl = new Tmap.Protocol.HTTP({
                                      url: urlStr,
                                      format:routeFormat
                                      });
 
  var routeLayer = new Tmap.Layer.Vector("route", {protocol:prtcl, strategies:[new Tmap.Strategy.Fixed()]});
  routeLayer.events.register("featuresadded", routeLayer, onDrawnFeatures);
  map.addLayer(routeLayer);
  
}

//경로 그리기 후 해당영역으로 줌
function onDrawnFeatures(e){
  map.zoomToExtent(this.getDataExtent());
}


/* var map;

function initialize() {
    map = new Tmap.Map({div:"map_div", width:'500px', height:'500px'});

    map.addControls([
        new Tmap.Control.KeyboardDefaults(),//키보드 컨트롤
        new Tmap.Control.MousePosition(),	//마우스 좌표값
        new Tmap.Control.OverviewMap()		//+버튼 클릭시 미니 지도표시
    ]);
    
    //마크 찍는 코드
    var markerLayer = new Tmap.Layer.Markers();
    map.addLayer(markerLayer);
    var lonlat = new Tmap.LonLat(14135893.887852, 4518348.1852606);
    var size = new Tmap.Size(24,38);
    var offset = new Tmap.Pixel(-(size.w/2), -(size.h/2));
    var icon = new Tmap.Icon('https://developers.skplanetx.com/upload/tmap/marker/pin_b_m_a.png', size, offset); 
    var marker = new Tmap.Marker(lonlat, icon);
    markerLayer.addMarker(marker);
    //마크끝
    
}
window.onload = function() {
    initialize();
}

function div(){
    alert(map.div.id);
}
function minExtent(){
    alert(map.minExtent);
}
function maxExtent(){
    alert(map.maxExtent);
}
function getExtent(){
    alert(map.getExtent());
}
function zoomToMaxExtent(){
    map.zoomToMaxExtent();
} */
</script>

</head>
<body onload="initTmap()">
<div id="map_div"></div>
</body>
<!-- test

<div id="map_div" ></div>

<input type="button" onClick="div()" value="맵 div id 구하기">
<input type="button" onClick="minExtent()" value="맵 최소 익스텐트">
<input type="button" onClick="maxExtent()" value="맵 최대 익스텐트">
<input type="button" onClick="getExtent()" value="현재 보여지는 맵 좌표영역">
<input type="button" onClick="zoomToMaxExtent()" value="최대익스텍트로 줌하기"> -->

</html>