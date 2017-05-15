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
	<title>Atropos - Responsive Multipurpose</title>
	<meta name="keywords" content="HTML5,CSS3,Template" />
	<meta name="description" content="" />
	<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />
	<%@ include file="../include/bootstap_collect.jsp" %>
<script>
// 비밀번호용 변수
var pwIsOk = false;
// AST(CSW) : 비밀번호와 체크용이 일치하는지 확인하는 함수
function pwChk() {
	var mpw = $("#mpw").val();
	var pwchk = $("#pwchk").val();
	if (mpw != pwchk){
		$("#pwchk_rst").html('비밀번호가 일치하지 않습니다.');
		$("#pwchk_rst").css({"color":"red"});
	}
	else {
		if (mpw.length > 5) {
			$("#pwchk_rst").html('비밀번호가 일치합니다.');
			$("#pwchk_rst").css({"color":"green"});
		} else {
			$("#pwchk_rst").html('비밀번호는 6자 이상입니다.');
			$("#pwchk_rst").css({"color":"red"});
		}
	}
}
// 비밀번호 일치했을 경우
function pw_pwchk_equal() {
	pwIsOk = ($("#pwchk_rst").html() == '비밀번호가 일치합니다.') ? true : false;
}

$(document).ready(function() {
	var mid = $("#mid").val();
	var mpw = $("#mpw").val();
	var pwchk = $("#pwchk").val();
	var mname = $("#mname").val();
	var mphone = $("#mphone").val();
	
	$("#pwchk").keyup(function(){
		$("#mpw").keyup(function() {
			pwChk();
			pw_pwchk_equal();
		});
		pwChk();
		pw_pwchk_equal();
	});
	$("#submitBtn").click(function() {
		alert("버튼 눌렀네");
	
		// 입력요소 체크 변수
		var input_check=true;
		// 아이디를 입력체크
		if (mid == '') {
			alert("id를 입력하세요");
			input_check = false;
		// @가 빠져있으면
		} else if (mid.indexOf("@") == -1) {
			alert("@가 없습니다.");
			input_check = false;
		// @뒤에 입력된 것이 없으면
		} else if (mid.indexOf("@") == mid.length-1) {
			alert("@뒤에 입력하세요");
			input_check = false;
		// 비밀번호를 입력체크
		} else if (mpw=='') {
			alert("비밀번호를 입력하세요");
			input_check = false;
		// 비밀번호 확인을 입력 체크
		} else if (pwchk=='') {
			alert("비밀번호 확인을 입력하세요");
			input_check = false;
		// 이름을 입력체크
		} else if (mname=='') {
			alert("이름을 입력하세요");
			input_check = false;
		// 핸드폰을 입력체크
		} else if (mphone=='') {
			alert("핸드폰을 입력하세요");
			input_check = false;
		}
		// 비밀번호가 6자 이상인지 체크
		if (mpw.length < 6) {
			alert("비밀번호는 6자 이상이어야 합니다");
			input_check = false;
		}
		if (input_check && pwIsOk) {
			alert("조건 어느정도 충족됨");
		}
	});
	
});
</script>
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
				<h1>회원가입</h1>
			</div>
		</header>


		<section class="container">

			<div class="row">

				<div class="col-md-9">

					<form method="post">
						<div class="row">

							<div class="form-group">
								<div class="col-md-6">
									<label>아이디(이메일)</label>
									<input type="text" class="form-control" name="mid" id="mid" placeholder="아이디를 입력하세요(email형식)" />
								</div>
								<div class="col-md-6">
									<label>비밀번호</label>
									<input type="password" class="form-control" name="mpw" id="mpw" placeholder="비밀번호를 입력하세요(6자 이상)" />
								</div>
								<div class="col-md-6">
									<label>비밀번호 확인</label>&nbsp;&nbsp;&nbsp;<span id="pwchk_rst"></span>
									<input type="password" class="form-control" id="pwchk" placeholder="비밀번호를 한번 더 입력하세요" />
								</div>
								<div class="col-md-6">
									<label>이름</label>
									<input type="text" class="form-control" name="mname" id="mname" placeholder="이름을 입력하세요" />
								</div>
								<div class="col-md-6">
									<label>휴대폰</label>
									<input type="text" class="form-control" name="mphone" id="mphone" placeholder="-없이 입력하세요" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12" >
								<button class="btn btn-success" id="submitBtn">
									<i class="fa fa-check"></i> 회원가입</button> 
								<button class="btn btn-primary">초기화</button>
							</div>
						</div>
					</form>

				</div>

			</div>


		</section>

	</div>
	<!-- /WRAPPER -->

</body>
</html>