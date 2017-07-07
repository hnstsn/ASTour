<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!--[if IE 8]>         <html class="ie ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!-- mobile settings -->
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<head>
<meta charset="utf-8" />

<!-- AST : bootstrap을 위한 것들을 모아놓은  jsp page -->
<!--..은 현재에서 한단계 상위  -->
   <%@ include file="../include/bootstap_collect.jsp" %>

   <style>
   /*  AST : 마커클릭후의 오버레이의 스타일을 정의한다   - 부트스트랩과 겹치면 안됨*/
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #faa;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .customClose {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .customClose:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: 6px;margin-bottom: 3px}
	.desc .overLink{margin-top:6px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
       
	/* AST : 지도크기 조절하는 +,-창의 스타일을 정의한다. */       
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
   
   <!--다음맵 api 키 인증  -->
   <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=3e0a1d6ea303156f75ac023290071948"></script>
   <!--다음맵 추가 라이브러리 불러오기  -->
   <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=3e0a1d6ea303156f75ac023290071948&libraries=services,clusterer,drawing"></script>
 
   <script>
  
   	// AST: 선택한 지역의 세부지역select를 바꿉니다
   	$(document).ready(function(){
   		$("#siSelect").change(function (){
			var name = $("#siSelect option:selected").val();
			// AST : 지역이바뀌니 초기화
			$("#gunSelect").html("<option value=''>모두</option>");
   			$.ajax({
   				url:"${path}/selectBox",
   				type : "post",
   				data : "name="+name,
   				dataType : 'json',
   				success : function(Data){
   					console.log(Data);
   					for(var i=0; i<Data.length; i++){
   						$("#gunSelect").append("<option value="+Data[i].gun+">"+Data[i].gun+"</option>");
   					}
   				}
   			});
   		});
   	   	
   		
   		// AST : 위치 검색 버튼 클릭시 마커 변경
   		// 마커배열 전역변수로
   		var markerArr; 
   		// 오버레이 전역변수
   		var overlayArr;
   		// 위치, 콘텐츠 배열 전역변수로
   		var positions;
   		//이전 마커 수
   		var beforeSize = 0;
   		// AST : '해당 위치로~' 버튼 클릭시 시작
   		$("#searchBtn").click(function(){

   				for(var i=0; i<beforeSize; i++){
				// AST : 기존 마커와 오버레이들을 삭제한다.
					markerArr[i].setMap(null);
				 	overlayArr[i].setMap(null);
				}
   			 
   			// AST : like 쓰기위해 % 직접 넣음(안씀)
 		   var selectedSi = $("#siSelect option:selected").val(); 			
 		   var selectedGun = $("#gunSelect option:selected").val();			
 		   var selectedEvent= $("#eventSelect option:selected").val();	
 		   var selectedAttraction = $("#attractionName").val();			
 		   
 		  $.ajax({
 				url:"${path}/searchLocation",
 				type : "post",
 				data : {"acity": selectedSi, "agu": selectedGun,
 						"asort": selectedEvent,"atitle": selectedAttraction},
 				dataType : 'json',
 				success : function(data){
 					console.log(data);
 					beforeSize=data.length;
 					positions = new Array();
 					markerArr = new Array();
 					overlayArr = new Array();
 					
 					for(var i=0; i<data.length; i++){
 						// AST : 위치, 오버레이컨텐츠 설정
 						var atitle = data[i].atitle;
 						var aimage = "${path}/resources/image/culture/"+data[i].aimage;
 						var aaddress = data[i].acity+" "+data[i].agu;
 						var aaddress2 =data[i].aaddress;
 						var detailView = "${path}/attraction/initDetails.do?name="+data[i].atitle;
 						var markerLat = data[i].alatitude;
 						var markerLon = data[i].alongitude;
 						 
 						var position = {
 								content: '<div class="wrap">' +
 						         '    <div class="info">' +
 						         '        <div class="title">' +
 						         			atitle+
 						         '            <div class="customClose" onclick="closeOverlay('+i+')" title="닫기"></div>' +
 						         '        </div>' +
 						         '        <div class="body">' +
 						         '            <div class="img">' +
 						         '                <img src="'+
 						         					aimage+
 						         '					" width="80" height="75">' +
 						         '           </div>' +
 						         '            <div class="desc">' +
 						         '                <div class="jibun ellipsis">'+
 						         			       	aaddress+
 						         '			      </div>'+
 						         '                <div class="ellipsis">'+
 						         					aaddress2+
 						         '			      </div>' +
 						         '                <div class="overLink">'+  
 						         '             	  <a href="'+
 						         					detailView+
 						         '					"	target="_blank" class="link">상세보기</a>' +
 						       	 '             	  <a href="http://map.daum.net/link/to/'+
 						       						atitle+','+markerLat+','+markerLon+
		       					 '					"	target="_blank" class="link">길찾기</a></div>' +
 						         '            </div>' +
 						         '        </div>' +
 						         '    </div>' +
 						         '</div>',
 								latlng: new daum.maps.LatLng(data[i].alatitude, data[i].alongitude)
 						}
 						
 						positions.push(position);
 						// AST : 마커 설정
 						var marker = new daum.maps.Marker({
 					         position : positions[i].latlng,
 					         map : map
 					      });
 						// AST : 배열로 푸시
 						markerArr.push(marker);
 						
 						// AST : 오버레이 설정
 					   var overlay = new daum.maps.CustomOverlay({
 					         content : position.content,
 					         position : position.latlng,
 					         clickable : true
 					      });
 						// AST : 배열로 푸시
 						overlayArr.push(overlay);
 					
 					}
 					
 					//  AST : 이벤트 처리 함수 콜
 					markerMaker(markerArr, overlayArr);
 					// AST : 지도 중심이동
 					map.panTo(markerArr[0].getPosition());    
 				}
 			});
 	   	});
      });
   		
   </script>
</head>

<body>
   <!-- WRAPPER -->
   <div id="wrapper">

      <!-- FILTER BOX -->
      <section class="container re-filterbox no-top" style="margin-top: 100px;">
         <!-- add "styleBackground" class for colored box -->

         <div id="re-filter">
            <div class="row">
               <div class="form-group">

                  <div class="col-md-4 col-sm-6 col-xs-12">
                     <label>지역</label> <select id="siSelect" class="form-control"
                      name="re_location">
                        <option name="name" value="">모두</option>
                        <option name="name"  value="서울">서울</option>
                        <option name="name"  value="부산">부산</option>
                        <option value="대구">대구</option>
                        <option value="인천">인천</option>
                        <option value="광주">광주</option>
                        <option value="대전">대전</option>
                        <option value="울산">울산</option>
                        <option value="세종">세종</option>
                        <option value="강원">강원</option>
                        <option value="경기">경기</option>
                        <option value="경상남도">경상남도</option>
                        <option value="경상북도">경상북도</option>
                        <option value="전라남고">전라남도</option>
                        <option value="전라북도">전라북도</option>
                        <option value="제주">제주</option>
                        <option value="충청남도">충청남도</option>
                        <option value="충청북도">충청북도</option>
                     </select>
                  </div>
                  
                  <div class="col-md-3 col-sm-6 col-xs-12">
                     <label>지역세부</label> <select id="gunSelect" class="form-control" name="re_type">
                     <option value="">모두</option>
                     
                     </select>
                  </div>
                  <div class="col-md-3 col-sm-6 col-xs-12">
                     <label>행사</label> <select id="eventSelect" class="form-control" name="re_status">
                        <option value="">모두</option>
                        <option value="행사">행사</option>
                        <option value="명소">일반</option>
                     </select>
                  </div>
               </div>
            </div>

            <div class="row">
               <div class="form-group">
                  <div class="col-md-2 col-sm-6 col-xs-6">
                     <label>기타1</label> <select id="test02" class="form-control" name="re_baths">
                    	<option value="0">미완</option>
                     </select>
                  </div>

                  <div class="col-md-2 col-sm-6 col-xs-6">
                     <label>기타2</label> <select class="form-control" name="re_price_to">
                        <option value="0">미완</option>
                     </select>
                  </div>
                  
                  <div class="col-md-2 col-sm-6 col-xs-12">
                     <label>관광지명</label> <input type="text" id="attractionName"
                        class="form-control" name="re_id" />
                     </div>

                  <div class="col-md-4 col-sm-12 col-xs-12">
                     <label>&nbsp;</label>
                     <button id = "searchBtn" class="btn btn-primary fullwidth">해당위치로 검색</button>
                  </div>
               </div>
            </div>

         </div>


      </section>
      <!-- /FILTER BOX -->
      
      <!-- 구분하는 줄 긋기  -->
	      <div id="seco1" class="divider">
	      	<i class="fa fa-leaf"></i>
	      </div>

      <!-- PAGE TITLE -->
		
	  <!-- AST : 지도 크기 변경은 section의 width , padding , margin 조절  -->	
      <section class="container" style="width: 85%; ">
         <div class="row">

            <!-- AST : 왼쪽 바  -->
         	 <!-- <div class="col-md-2">

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

            </div> -->
            <!--왼쪽바 끝  -->
			
			<!-- AST : 맵이 들어갈 곳, col-md-숫자 변경으로 조절 -->
            <div class="col-md-12">
               <div class="map_wrap">
                   <div id="gmap" style="width: 100%; height: 700px; position:relative; overflow:visible;"></div>
                   <div class="custom_zoomcontrol radius_border"> 
                       <span onclick="zoomIn()"><img height="39px" src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
                       <span onclick="zoomOut()"><img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
                    </div>
                  
               </div> 
            </div>
            
	<script>
      var mapContainer = document.getElementById('gmap'), // 지도를 표시할 div 
         mapOption = {
            center : new daum.maps.LatLng(37.579634, 126.976955), // 지도의 중심좌표
            level : 10 // 지도의 확대 레벨
         };
      var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
   
      /* // AST : 기본 마커 생성
      
      // 마커가 표시될 위치입니다 
      var markerPosition = new daum.maps.LatLng(37.579634, 126.976955);
   
      // 마커를 생성합니다
      var marker = new daum.maps.Marker({
         position : markerPosition
      });
   
      // 마커가 지도 위에 표시되도록 설정합니다
      marker.setMap(map);
   
      // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
      // marker.setMap(null); */    
   

      // AST : 이미지 바꾼 마커 - 사용할까?
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

      // AST : 지도 클릭 이벤트 - 원만들기
      //마커가 클릭된 상태이면 지도클릭이벤트를 막는다. // clickable : true 로 대체 되었다
      
      //지도 클릭 이벤트 : 클릭된 중심으로부터 원그리기
      
      /* var circle;
      daum.maps.event.addListener(map, 'click', function(mouseEvent) {
            
               
               //이전에 원이 있으면 지운다.
               if(circle!=null){
                  circle.setMap(null);
               }
               
               var mousePosition = mouseEvent.latLng;
               circle = new daum.maps.Circle({
                  center : mousePosition, // 원의 중심좌표 입니다 
                  radius : 7000, // 미터 단위의 원의 반지름입니다 
                  strokeWeight : 5, // 선의 두께입니다 
                  strokeColor : '#75B8FA', // 선의 색깔입니다
                  strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
                  strokeStyle : 'dashed', // 선의 스타일 입니다
                  fillColor : '#CFE7FF', // 채우기 색깔입니다
                  fillOpacity : 0.2 // 채우기 불투명도 입니다   
               });
               circle.setMap(map);
          
         });
    */
    
   
   	  /* //마커 위에 커스텀오버레이를 표시합니다
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
      overlay.setMap(null); */
      
      
      // AST : 확대, 축소 
      // 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
      function zoomIn() {
          map.setLevel(map.getLevel() - 1);
      }

      // 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
      function zoomOut() {
          map.setLevel(map.getLevel() + 1);
      }
      
      // AST : 오버레이 닫기 위한 변수
      var overlays2;
      
      // AST : 오버레이 설정 함수
      function markerMaker(markersArr, overlaysArr){
    	  document.getElementById("searchBtn").scrollIntoView();
    	  console.log(markersArr);
    	  console.log(overlaysArr);
    	  overlays2 = overlaysArr;
    	  // AST : 이벤트 리스너
    	  for(var i=0; i<markersArr.length; i++){
    		  daum.maps.event.addListener(markersArr[i], 'click', overlayMaker(overlaysArr[i])); 
    	  }
      }
      // AST : 클로저?
      function overlayMaker(eachOverlay){
    	  	return function(){
    	  	eachOverlay.setMap(map);
    	  	}
	      }
      
      // AST : 오버레이 닫기 함수
      function closeOverlay(i) {
          overlays2[i].setMap(null);
       }
      
     
   </script>

         </div>
      </section>

   </div>
   <!-- /WRAPPER -->


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

</html>