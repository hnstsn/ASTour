<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>아이디 찾기</title>
	<meta name="keywords" content="HTML5,CSS3,Template" />
	<meta name="description" content="" />
	<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />
	<%@ include file="../include/bootstap_collect.jsp" %>
<script>
$(document).ready(function() {
		
	// 아이디 찾기 버튼을 눌렀을 때
	$("#schIdBtn").click(function() {
		var mname1 = $("#mname1").val();
			mphone1 = $("#mphone1").val();
			
		if (mname1 == '') {
			alert("이름을 입력하세요");
			return false;
		} else if (mphone1 == '') {
			alert("휴대폰 번호를 입력하세요");
			return false;
		} else {
			$.ajax({
				url: "${path}/member/getId.do",
				type: "post",
				data: "mname=" + mname1 + "&mphone=" + mphone1,
				success: function(data) {
					if (data != 'false') {
						$("#schIdRst").html("아이디는 <Strong>" + data + "</Strong> 입니다");
					} else {
						$("#schIdRst").html("이름 또는 휴대폰 번호를 다시 확인해주세요");
						$("#schIdRst").css({"color":"red"});
					}
				}
			});
		}
	});
	
	
	// 비밀번호 찾기 버튼을 눌렀을 때
	$("#schPwBtn").click(function() {
		var mid2 = $("#mid2").val();
			mname2 = $("#mname2").val();
			mphone2 = $("#mphone2").val();
			
		if (mid2 == '') {
			alert("아이디를 입력하세요");
			return false;
		} else if (mname2 == '') {
			alert("이름을 입력하세요");
			return false;
		} else if (mphone2 == '') {
			alert("휴대폰 번호를 입력하세요");
			return false;
		} else {
			alert("잠시만 기다려주세요");
			$.ajax({
				url: "${path}/member/getPw.do",
				type: "post",
				data: "mid=" + mid2 + "&mname=" + mname2 + "&mphone=" + mphone2,
				success: function(data) {
					if (data) {
						$("#schPwRst").html("비밀번호를 이메일로 전송하였습니다.");
						$("#schPwRst").css({"color":"green"});
					} else {
						$("#schPwRst").html("아이디, 이름 또는 휴대폰 번호를 다시 확인해주세요");
						$("#schPwRst").css({"color":"red"});
					}
				}
			});
		}
	});
	
});
</script>
<style>
.col-md-6 { padding: 5px; } 
/* 부트스트랩으로 인해 위에 공간을 없애준다. */
#wrapper{ padding : 0 !important; margin : 0 !important; }
</style>
</head>
<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="resources/assets/images/boxed_background/1.jpg"  -->

	<!-- WRAPPER -->
	<div id="wrapper">
     
		<!-- PAGE TITLE -->
		<header id="page-title"> <!-- style="background-image:url('../assets/images/demo/parallax_bg.jpg')" -->
			<!--
				Enable only if bright background image used
				<span class="overlay"></span>
			-->
			<div class="container">
				<h1>아이디/비밀번호 찾기</h1>
			</div>
		</header>


		<section class="container">

			<div class="row">

				<div class="col-md-9">
				
					<div class="tabs nomargin-top">

							<!-- tabs -->
							<ul class="nav nav-tabs">
								<li class="active">
									<a href="#tab1" data-toggle="tab">
										<i class="fa fa-heart"></i> 아이디 찾기
									</a>
								</li>
								<li>
									<a href="#tab2" data-toggle="tab">
										<i class="fa fa-cogs"></i> 비밀번호 찾기
									</a>
								</li>
							</ul>

							<!-- tabs content -->
							<div class="tab-content">
								<div id="tab1" class="tab-pane active">
									<div class="row">
			
										<div class="form-group">
											<div class="col-md-6">
												<label style="display: block;">이름</label>
												<input type="text" class="form-control" id="mname1" placeholder="이름을 입력하세요" 
												style="width: 450px; display: inline-block" />									
											</div>
											<div class="col-md-6">
												<label style="display: block;">휴대폰 번호</label>
												<input type="text" class="form-control" id="mphone1" placeholder="휴대폰 번호를 입력하세요" 
												style="width: 450px; display: inline-block" />									
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<button class="btn btn-success" id="schIdBtn">
													<i class="fa fa-check"></i> 아이디 찾기
												</button>
												<h4 id="schIdRst"></h4>
											</div>
										</div>
										
									</div>
								</div>

								<div id="tab2" class="tab-pane">
									<div class="row">
			
										<div class="form-group">
											<div class="col-md-6">
												<label style="display: block;">아이디</label>
												<input type="text" class="form-control" id="mid2" placeholder="아이디를 입력하세요(email형식)" 
												style="width: 450px; display: inline-block" />									
											</div>
											<div class="col-md-6">
												<label style="display: block;">이름</label>
												<input type="text" class="form-control" id="mname2" placeholder="이름을 입력하세요" 
												style="width: 450px; display: inline-block" />									
											</div>
											<div class="col-md-6">
												<label style="display: block;">휴대폰 번호</label>
												<input type="text" class="form-control" id="mphone2" placeholder="휴대폰 번호를 입력하세요" 
												style="width: 450px; display: inline-block" />									
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<button class="btn btn-success" id="schPwBtn">
													<i class="fa fa-check"></i> 비밀번호 찾기
												</button>
												<h4 id="schPwRst"></h4>
											</div>
										</div>
										
									</div>
								</div>
							</div>

						</div>
				
				</div>

			</div>


		</section>

	</div>
	<!-- /WRAPPER -->

</body>
</html>