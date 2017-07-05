<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../include/bootstap_collect.jsp"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css'
	href='http://arshaw.com/css/main.css?6' />
<%@ include file="../include/sessionCheck.jsp"%>
<link rel='stylesheet' type='text/css'
	href='http://arshaw.com/css/fullcalendar.css?3' />

<link rel='stylesheet' type='text/css'
	href='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.css' />
<script type='text/javascript'
	src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-1.10.2.min.js'></script>
<script type='text/javascript'
	src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-ui-1.10.3.custom.min.js'></script>
<script type='text/javascript'
	src='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.min.js'></script>
<script src='../lib/moment.min.js'></script>


<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js'></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>	


<script type='text/javascript'>
	$(document).ready(function() {

		var events1=[]; // 일정 리스트 받기 위함 배열
		
		//일정 리스트 가지고오는 ajax 
		$.ajax({
            url : '${path}/calendar/selelctList',
            data : "mpk="+"${sessionScope.member.mpk}",
            dataType : 'json',
            async: false,
            success : function(doc) {
               if(doc.length>0) {
                  for (var i = 0; i < doc.length; i++) {
                	  //배열에 일정리스트 add 
                     events1.push({
                    	id : doc[i].cpk,
                    	title : doc[i].ctitle,
                        start : doc[i].startdate,
                        end : doc[i].enddate,
                        allDay : false
                     });
                  }
               }else { //일정이 없을 경우
                  events1.push({});
               }
            }
         });
		
		$('#calendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},
			//화면 클릭시 일정 변경가능 true,불가능 false
			editable : true,
			eventLimit: true,
			//<!--한글 설정-->
			titleFormat : {
				month : "yyyy년 MMMM",
				week : "[yyyy] MMM d일~{ [yyyy] MMM d일}",
				day : "yyyy년 MMM d일 dddd"
			},
			monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
			dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
			dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
			buttonText : {
				today : "오늘",
				month : "월별",
				week : "주별",
				day : "일별"
			},
			//<!--/한글 설정-->
			//일정 내용들
			events : events1,
			//일정 기간 클릭시
			eventClick :  function(calEvent, jsEvent, view) {
				
				//시작 일정
				var stmom;
				var stda;
				var sthou;
				var stmin;
				//월
				if((calEvent.start.getMonth()+1)<10){
					stmom='0'+(calEvent.start.getMonth()+1);
				}else{
					stmom=(calEvent.start.getMonth()+1)+'';
				}
				//일
				if(calEvent.start.getDate()<10){
					stda='0'+calEvent.start.getDate();
				}else{
					stda=calEvent.start.getDate()+'';
				}
				//시
				if(calEvent.start.getHours()<10){
					sthou='0'+calEvent.start.getHours();
				}else{
					sthou=calEvent.start.getHours()+'';
				}
				//분
				if(calEvent.start.getMinutes()<10){
					stmin='0'+calEvent.start.getMinutes();
				}else{
					stmin=calEvent.start.getMinutes()+'';
				}		
				
				//끝 일정
				var enmom;
				var enda;
				var enhou;
				var enmin;
				//월
				if((calEvent.end.getMonth()+1)<10){
					enmom='0'+(calEvent.end.getMonth()+1);
				}else{
					enmom=(calEvent.end.getMonth()+1)+'';
				}
				//일
				if(calEvent.end.getDate()<10){
					enda='0'+calEvent.end.getDate();
				}else{
					enda=calEvent.end.getDate()+'';
				}
				//시
				if(calEvent.end.getHours()<10){
					enhou='0'+calEvent.end.getHours();
				}else{
					enhou=calEvent.end.getHours()+'';
				}
				//분
				if(calEvent.end.getMinutes()<10){
					enmin='0'+calEvent.end.getMinutes();
				}else{
					enmin=calEvent.end.getMinutes()+'';
				}		
				
				var startdate =calEvent.start.getFullYear()+'-'+stmom+'-'+stda+'T'+sthou+':'+stmin;
				var enddate =calEvent.end.getFullYear()+'-'+enmom+'-'+enda+'T'+enhou+':'+enmin;
				var ctitle = calEvent.title;
				var cpk = calEvent.id;

				//데이터 넣음 
				$("#updata_1").val(ctitle);
				$("#updata_2").val(startdate);
				$("#updata_3").val(enddate);
				$("#cpk").val(cpk);
				//모달 불러옴
				document.getElementById('id02').style.display='block';
				
			},
			
			//일정 기간 사이즈 변경시
			eventResize: function(event, delta, revertFunc) {
				//시작 일정
				var stmom;
				var stda;
				var sthou;
				var stmin;
				//월
				if((event.start.getMonth()+1)<10){
					stmom='0'+(event.start.getMonth()+1);
				}else{
					stmom=(event.start.getMonth()+1)+'';
				}
				//일
				if(event.start.getDate()<10){
					stda='0'+event.start.getDate();
				}else{
					stda=event.start.getDate()+'';
				}
				//시
				if(event.start.getHours()<10){
					sthou='0'+event.start.getHours();
				}else{
					sthou=event.start.getHours()+'';
				}
				//분
				if(event.start.getMinutes()<10){
					stmin='0'+event.start.getMinutes();
				}else{
					stmin=event.start.getMinutes()+'';
				}		
				
				//끝 일정
				var enmom;
				var enda;
				var enhou;
				var enmin;
				//월
				if((event.end.getMonth()+1)<10){
					enmom='0'+(event.end.getMonth()+1);
				}else{
					enmom=(event.end.getMonth()+1)+'';
				}
				//일
				if(event.end.getDate()<10){
					enda='0'+event.end.getDate();
				}else{
					enda=event.end.getDate()+'';
				}
				//시
				if(event.end.getHours()<10){
					enhou='0'+event.end.getHours();
				}else{
					enhou=event.end.getHours()+'';
				}
				//분
				if(event.end.getMinutes()<10){
					enmin='0'+event.end.getMinutes();
				}else{
					enmin=event.end.getMinutes()+'';
				}		
				
				var startdate =event.start.getFullYear()+'-'+stmom+'-'+stda+'T'+sthou+':'+stmin;
				var enddate =event.end.getFullYear()+'-'+enmom+'-'+enda+'T'+enhou+':'+enmin;
				var ctitle = event.title;
				var pk = event.id;

				//사이즈 변경시 
				$.ajax({
					url : '${path}/calendar/calendarSize',
					type : "post", //전송방식
					dataType : "json", //json타입으로 요청
					data : {"startdate":startdate,"enddate":enddate,"ctitle":ctitle,"id" :pk }
				});
			},
 
			//일정 기간 이동시 
		    eventDrop: function(event, delta, revertFunc) {
		    	//시작 일정
				var stmom;
				var stda;
				var sthou;
				var stmin;
				//월
				if((event.start.getMonth()+1)<10){
					stmom='0'+(event.start.getMonth()+1);
				}else{
					stmom=(event.start.getMonth()+1)+'';
				}
				//일
				if(event.start.getDate()<10){
					stda='0'+event.start.getDate();
				}else{
					stda=event.start.getDate()+'';
				}
				//시
				if(event.start.getHours()<10){
					sthou='0'+event.start.getHours();
				}else{
					sthou=event.start.getHours()+'';
				}
				//분
				if(event.start.getMinutes()<10){
					stmin='0'+event.start.getMinutes();
				}else{
					stmin=event.start.getMinutes()+'';
				}		
				
				//끝 일정
				var enmom;
				var enda;
				var enhou;
				var enmin;
				//월
				if((event.end.getMonth()+1)<10){
					enmom='0'+(event.end.getMonth()+1);
				}else{
					enmom=(event.end.getMonth()+1)+'';
				}
				//일
				if(event.end.getDate()<10){
					enda='0'+event.end.getDate();
				}else{
					enda=event.end.getDate()+'';
				}
				//시
				if(event.end.getHours()<10){
					enhou='0'+event.end.getHours();
				}else{
					enhou=event.end.getHours()+'';
				}
				//분
				if(event.end.getMinutes()<10){
					enmin='0'+event.end.getMinutes();
				}else{
					enmin=event.end.getMinutes()+'';
				}		
				
				var startdate =event.start.getFullYear()+'-'+stmom+'-'+stda+'T'+sthou+':'+stmin;
				var enddate =event.end.getFullYear()+'-'+enmom+'-'+enda+'T'+enhou+':'+enmin;
				var ctitle = event.title;
				var pk = event.id;
				
				//이벤트 이동시 컨트롤 전송후 데이터 저장
				$.ajax({
					url : '${path}/calendar/calendarSize',
					type : "post", //전송방식
					dataType : "json", //json타입으로 요청
					data : {"startdate":startdate,"enddate":enddate,"ctitle":ctitle,"id" :pk }
				});
		    }
		});
	});
	
	window.onload = function() {
		//일정 수정
		document.getElementById('updata_data').onclick = function() {
			var loc2 = $("#updata_2").val();
			var loc3 = $("#updata_3").val();
			var startDate = new Date(loc2);
			var endDate = new Date(loc3);
			var datetime = endDate.getTime() - startDate.getTime();
			if (datetime == 'NaN') { //오류
				alert("잘못된 입력 입니다.");
				return false;
			} else if (datetime < 1800000) { // 일정 시간 30분 차이 안날경우
				alert("30분 미만 입니다.");
				return false;
			} else if (datetime >= 1800000) {  //완료 이벤트 처리
				document.getElementById('up').submit();
				return false;
			}
		};
		//일정 추가
		document.getElementById('calendar_data').onclick = function() {
			var loc2 = $("#data_2").val();
			var loc3 = $("#data_3").val();
			var startDate = new Date(loc2);
			var endDate = new Date(loc3);
			var datetime = endDate.getTime() - startDate.getTime();
			if (datetime == 'NaN') { //오류
				alert("잘못된 입력 입니다.");
				return false;
			} else if (datetime < 1800000) { //일정 시간 30분 차이 미만경우
				alert("30분 미만 입니다.");
				return false;
			} else if (datetime >= 1800000) { //완료 이벤트
				document.getElementById('insert').submit();
				return false;
			}
		};
	};
	
	//삭제 
	function f1(){
		var cpk = $("#cpk").val();
		var mpk = $("#mpk").val();
		
		location.href="${path}/calendar/cal_delete?mpk="+mpk+"&cpk="+cpk;
	}
	
</script>
</head>

<body>
	<div class="wrapper">
		<!-- AST : 페이지 타이틀 -->
		<div id="blog">
		<header id="page-title">
			<div class="container">
				<h1 class="hn">일정</h1>
			</div>
		</header>
		<!-- / AST : 페이지 타이틀 -->
		</div>
	</div>
		
		
	<div>

		<!-- modal 일정 추가 -->
      <div id="id01" class="w3-modal" style="z-index: 10;">
         <div class="w3-modal-content w3-card-4 w3-animate-zoom"
            style="max-width: 600px; margin-top: 15%">

            <div class="w3-center">
               <br> <span
                  onclick="document.getElementById('id01').style.display='none'"
                  class="w3-button w3-xlarge w3-hover-red w3-display-topright"
                  title="Close Modal">&times;</span>
            </div>

               <div class="w3-section w3-container">
               <form action="${path}/calendar/insert" method="post" id="insert">
                  <label><b>제목:</b></label>
                  <input class="w3-input w3-border w3-margin-bottom" type="text" name="data_1" id="data_1" required> 
                  <label><b>일정 시작</b></label>
                  <!-- value="2017-06-29T12:00" 이런식으로 데이터  -->
                  <input class="w3-input w3-border" type="datetime-local" name="data_2" id="data_2" required> 
                  <label><b>일정 끝</b></label>
                  <!-- value="2017-06-29T12:00" 이런식으로 데이터  -->
                  <input class="w3-input w3-border" type="datetime-local" name="data_3" id="data_3" required> 
                  <input type="hidden" value="${sessionScope.member.mpk}" id="mpk" name="mpk">
                  <input  class="w3-button w3-block w3-green w3-section w3-padding"
                     type="submit" id="calendar_data" name="calendar_data" value="작성">
               </form>
               </div>

            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey" align="right">
               <button
                  onclick="document.getElementById('id01').style.display='none'"
                  type="button" class="w3-button w3-red">취소</button>
            </div>

         </div>
      </div>
      <!-- /modal -->
		
		<!-- modal 일정 수정 -->
		<div id="id02" class="w3-modal" style="z-index: 10;">
			<div class="w3-modal-content w3-card-4 w3-animate-zoom"
				style="max-width: 600px; margin-top: 15%">
				<div class="w3-center">
					<br> <span
						onclick="document.getElementById('id02').style.display='none'"
						class="w3-button w3-xlarge w3-hover-red w3-display-topright"
						title="Close Modal">&times;</span>
				</div>
				
				<div class="w3-section w3-container">
					<form action="${path}/calendar/update" method="post" id="up">
						<label><b>제목:</b></label>
						<input class="w3-input w3-border w3-margin-bottom" type="text" name="updata_1" id="updata_1" required> 
						<label><b>일정 시작</b></label>
						<!-- value="2017-06-29T12:00" 이런식으로 데이터  -->
						<input class="w3-input w3-border" type="datetime-local" name="updata_2" id="updata_2" required> 
						<label><b>일정 끝</b></label>
						<!-- value="2017-06-29T12:00" 이런식으로 데이터  -->
						<input class="w3-input w3-border" type="datetime-local" name="updata_3" id="updata_3" required> 
						<input type="hidden" name="cpk" id="cpk">
						<input type="hidden" name="mpk" id="mpk" value="${sessionScope.member.mpk}">
						<input  class="w3-button w3-block w3-green w3-section w3-padding"
							type="submit" name="updata_data" id="updata_data" value="수정">
					</form>
					</div>
				<div class="w3-container w3-border-top w3-padding-16 w3-light-grey" align="right">
					<button
						type="button" class="w3-button w3-red" onclick="f1()">삭제</button>
					<button
						onclick="document.getElementById('id02').style.display='none'"
						type="button" class="w3-button w3-red">취소</button>
				</div>
			</div>
		</div>
		<!-- /modal -->
		
		<!-- 달력 -->
		<section id="portfolio" class="container">
		<div id='calendar'
			style='margin-top: 5%; font-size: 13px;z-index: 1'>
			<!-- 일정추가 버튼 -->
			<center>
				<button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-circle w3-teal" style="margin: 1%;"
					type="submit">+</button>
			</center>
			<!-- /일정추가 버튼 -->
		</div>
		</section>
		<!-- /달력 -->
		
	</div>
	
</body>
</html>