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
// AST(CSW)
// 비밀번호 중복 체크 변수
var pwchkIsOk = false;
// 비밀번호와 체크용이 일치하는지 확인하는 함수
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
function chk_btn_pws() {
	pwchkIsOk = ($("#pwchk_rst").html() == '비밀번호가 일치합니다.') ? true : false;
}

//공백 제거 함수 정의
String.prototype.trim = function () {
    return this.replace(/^\s+|\s+$/g, "");
}


$(document).ready(function() {
	// 아이디에 공백 제거
	$("#mid").val($("#mid").val().trim());
	// 이름에 공백 제거
	$("#mname").val($("#mname").val().trim());
	
	// 비밀번호를 하나하나 입력할때 마다 비밀번호 체크
	$("#pwchk").keyup(function(){
		$("#mpw").keyup(function() {
			pwChk();
			chk_btn_pws;
		});
		pwChk();
		chk_btn_pws();
	});
	
	// 아이디 중복 체크 여부 변수
	var idIsOk = false;
	//초기에 인증하는 div 숨기기
	$("#repetitionDiv").hide();
	// 중복체크 버튼을 누륺루 사용 가능한 아이디면 인증하는 div를 띄워주자
	$("#repetitionBtn").click(function() {
		var mid = $("#mid").val();
		// 아이디에 입력값이 있을 경우 실행
		if (mid != '') {
			$.ajax({
				type: "post",
				url: "${path}/member/idCheck.do",
				data: "mid="+mid,
				success: function(result) {
					if (result) {
						alert("사용가능한 아이디 입니다.");
						idIsOk = true;
						$("#idChkRst").html("사용 가능한 아이디입니다");
						$("#idChkRst").css("color", "green");
						$("#repetitionDiv").show();
					} else {
						alert("사용할 수 없는 아이디 입니다.");
						$("#mid").val('');
					}
				}
			});
		}
	});
	
	// 이메일 인증했는지 확인하는 변수
	var cerChk = false;
	// 화면전환없이 인증번호 받기 누르면 인증번호가 전송
	$("#certificationBtn").click(function() {
		var mid = $("#mid").val();
		$.ajax({
			type: "post",
			url: "${path}/email/certification.do",
			data: "mid=" + mid,
		});
		alert("인증번호가 전송되었습니다.");
	});
	
	// 인증번호 확인 누른 후 결과 확인
	$("#certificationChk").click(function() {
		var certifyNum = $("#certifyNum").val();
		$.ajax({
			type: "post",
			url: "${path}/email/cerCheck.do",
			data: "certifyNum=" + certifyNum,
			success: function(result) {
				if (result) {
					alert("인증번호가 일치합니다.");
					cerChk = true;
				} else {
					alert("인증번호가 일치하지 않습니다.");
					cerChk = false;
				}
			}
		});
	});
	
	// 회원가입 버튼을 누르면
	$("#submitBtn").click(function() {
		var mid = $("#mid").val();
		var mpw = $("#mpw").val();
		var pwchk = $("#pwchk").val();
		var mname = $("#mname").val();
		var mphone = $("#mphone").val();
		
		// 각 요소 체크 변수
		var id_check=false;
			pw_check=false;
			mname_check=false;
			mphone_check=false;
		
		// 아이디를 입력체크
		if (mid == '') {
			alert("id를 입력하세요");
			$("#mid").focus();
			return false;
		// @가 빠져있으면
		} else if (mid.indexOf("@") == -1) {
			alert("@가 없습니다.");
			$("#mid").focus();
			return false;
		// @뒤에 입력된 것이 없으면
		} else if (mid.indexOf("@") == mid.length-1) {
			alert("@뒤에 입력하세요");
			$("#mid").focus();
			return false;
		// 아이디 조건 다 충족시	
		} else
			id_check = true;
			
	
		// 비밀번호를 입력체크
		if (mpw=='') {
			alert("비밀번호를 입력하세요");
			$("#mpw").focus();
			return false;
		// 비밀번호 확인을 입력 체크
		} else if (pwchk=='') {
			alert("비밀번호 확인을 입력하세요");
			$("#pwchk").focus();
			return false;
		}
		// 비밀번호가 6자 이상인지 체크
		if (mpw.length < 6) {
			alert("비밀번호는 6자 이상이어야 합니다");
			$("#mpw").focus();
			return false;
		} else
			pw_check = true;
		
		// 이름을 입력체크
		if (mname=='') {
			alert("이름을 입력하세요");
			$("#mname").focus();
			return false;
		} else
			mname_check = true;
		
		// 핸드폰을 입력체크
		if (mphone=='') {
			alert("핸드폰을 입력하세요");
			$("#mphone").focus();
			return false;
		} else
			mphone_check = true;
		
		if (!idIsOk) {
			alert("아이디 중복 체크를 하세요");
			return false;
		} else if (!cerChk) {
			alert("이메일 인증을 하세요")
			return false;
		} else if (! pwchkIsOk) {
			alert("비밀번호 중복을 확인하세요");
			return false;
		}
		//조건에 충족되니 회원가입ㄱㄱ//
		if (id_check && pw_check && mname_check && mphone_check) {
			alert("회원가입 되게 ");
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
				<h1>회원가입</h1>
			</div>
		</header>


		<section class="container">

			<div class="row">

				<div class="col-md-9">

					<form name="joinForm" method="post">
						<div class="row">

							<div class="form-group">
								<div class="col-md-6">
									<label style="display: block;">아이디(이메일)</label>
									<input type="text" class="form-control" name="mid" id="mid" placeholder="아이디를 입력하세요(email형식)" 
									style="width: 450px; display: inline-block" />									
									<input type="button" class="btn btn-info" id="repetitionBtn" value="중복체크" /><br />
									&nbsp;<span id="idChkRst"></span>
								</div>
								<div class="col-md-6" id="repetitionDiv">
									<input type="text" class="form-control" name="certifyNum" id="certifyNum" placeholder="인증번호 입력" 
									style="width: 290px; display: inline-block" />									
									<input type="button" class="btn btn-info" id="certificationBtn" value="인증번호 받기" />
									<input type="button" class="btn btn-info" id="certificationChk" value="인증번호 확인" />
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