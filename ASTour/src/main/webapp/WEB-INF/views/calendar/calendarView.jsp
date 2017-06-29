<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<%@ include file="../include/bootstap_collect.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css'
	href='http://arshaw.com/css/main.css?6' />
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
<script type='text/javascript'>
	$(document).ready(function() {
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		$('#calendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},
			//화면 클릭시 일정 변경가능 true,불가능 false
			editable : true,
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
			events : [ {
				title : 'All Day Event',
				start : new Date(y, m, 1)
			}, {
				title : 'Long Event',
				start : new Date(y, m, d - 5),
				end : new Date(y, m, d - 2)
			}, {
				id : 999,
				title : 'Repeating Event',
				start : new Date(y, m, d - 3, 16, 0),
				allDay : false
			}, {
				id : 999,
				title : 'Repeating Event',
				start : new Date(y, m, d + 4, 16, 0),
				allDay : false
			}, {
				title : 'Meeting',
				start : new Date(y, m, d, 10, 30),
				allDay : false
			}, {
				title : 'Lunch',
				start : new Date(y, m, d, 12, 0),
				end : new Date(y, m, d, 14, 0),
				allDay : false
			}, {
				title : 'Birthday Party',
				start : new Date(y, m, d + 1, 19, 0),
				end : new Date(y, m, d + 1, 22, 30),
				allDay : false
			}, {
				title : 'Click for Google1122',
				start : '2017-06-28T10:00',
				end : '2017-06-29T12:00',
				allDay : false
			} ],
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
				var sstr = "<input class='w3-input w3-border w3-margin-bottom' type='text' name='updata_1' id='updata_1' value='ctitle' required>";

				$("#updata_1").val(ctitle);
				$("#updata_2").val(startdate);
				$("#updata_3").val(enddate);
				document.getElementById('id02').style.display='block';
				
/* 				$.ajax({
				     type:"post",
				     url:"../prcs/schd-schd-add/",
				     data:{"act":act,"schd_idx":schd_idx,"title":title,"content":content,"start":dt_start,"end":dt_end},
				     success:function(data){
				      //calendar.fullCalendar('updateEvent',event);
				      $('#calendar').fullCalendar('unselect');
				     }
				    });    
 */
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
				alert(startdate);
				alert(enddate);
				alert(ctitle);
				
				/* 				$.ajax({
				     type:"post",
				     url:"../prcs/schd-schd-add/",
				     data:{"act":act,"schd_idx":schd_idx,"title":title,"content":content,"start":dt_start,"end":dt_end},
				     success:function(data){
				      //calendar.fullCalendar('updateEvent',event);
				      $('#calendar').fullCalendar('unselect');
				     }
				    });    
 */			},
 
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
				alert(startdate);
				alert(enddate);
				alert(ctitle);
				
				/* 				$.ajax({
				     type:"post",
				     url:"../prcs/schd-schd-add/",
				     data:{"act":act,"schd_idx":schd_idx,"title":title,"content":content,"start":dt_start,"end":dt_end},
				     success:function(data){
				      //calendar.fullCalendar('updateEvent',event);
				      $('#calendar').fullCalendar('unselect');
				     }
				    });     */
				    
		    }
		});
	});
	
</script>
</head>
<body>
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
					<form action="#">
						<label><b>제목:</b></label>
						<input class="w3-input w3-border w3-margin-bottom" type="text" name="data_1" id="data_1" required> 
						<label><b>일정 시작</b></label>
						<!-- value="2017-06-29T12:00" 이런식으로 데이터  -->
						<input class="w3-input w3-border" type="datetime-local" name="data_2" id="data_2" required> 
						<label><b>일정 끝</b></label>
						<!-- value="2017-06-29T12:00" 이런식으로 데이터  -->
						<input class="w3-input w3-border" type="datetime-local" name="data_3" id="data_3" required> 
						<label><b>내용</b></label>
						<input class="w3-input w3-border" type="text" name="data_4" id="data_4" required>
						<input  class="w3-button w3-block w3-green w3-section w3-padding"
							type="submit" id="calendar_data" value="작성">
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
					<form action="#">
						<label><b>제목:</b></label>
						<input class="w3-input w3-border w3-margin-bottom" type="text" name="updata_1" id="updata_1" required> 
						<label><b>일정 시작</b></label>
						<!-- value="2017-06-29T12:00" 이런식으로 데이터  -->
						<input class="w3-input w3-border" type="datetime-local" name="updata_2" id="updata_2" required> 
						<label><b>일정 끝</b></label>
						<!-- value="2017-06-29T12:00" 이런식으로 데이터  -->
						<input class="w3-input w3-border" type="datetime-local" name="updata_3" id="updata_3" required> 
						<label><b>내용</b></label>
						<input class="w3-input w3-border" type="text" name="updata_4" id="updata_4" required>
						<input  class="w3-button w3-block w3-green w3-section w3-padding"
							type="submit" id="calendar_data" value="수정">
					</form>
					</div>
				
				<div class="w3-container w3-border-top w3-padding-16 w3-light-grey" align="right">
					<button
						type="button" class="w3-button w3-red">삭제</button>
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
			style='margin: 3em 0; margin-top: 15%; font-size: 13px;z-index: 1'>
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