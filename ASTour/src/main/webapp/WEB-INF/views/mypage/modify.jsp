<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/bootstap_collect.jsp" %>
<%@ include file="../include/sessionCheck.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>ASTour 정보수정</title>
	<meta name="keywords" content="HTML5,CSS3,Template" />
	<meta name="description" content="" />
	<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />
	<!-- mobile settings -->
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<script>
// AST(CSW) : 정보 수정 페이지
//현재 비밀번호가 맞는지 확인하는 함수
function pwIsCor() {
	var be_mpw = $("#be_mpw").val();
	// 변경 전 비밀번호가 일치하지 않으면
	if ("${member.mpw}" != be_mpw) {
		$("#be_mpwChk_rst").html("비밀번호가 일치하지 않습니다.");
		$("#be_mpwChk_rst").css("color", "red");
		// 변경할 비밀번호 입력란이 비활성화
		$("#af_mpw").attr("disabled", "true");
		$("#af_mpwChk").attr("disabled", "true");
		return false;
		
	// 변경전 비밀번호가 일치한다면	
	} else {
		$("#be_mpwChk_rst").html("비밀번호가 일치합니다.");
		$("#be_mpwChk_rst").css("color", "green");
		// 변경할 비밀번호 입력란이 활성화
		$("#af_mpw").removeAttr("disabled");
		$("#af_mpwChk").removeAttr("disabled");
		return true;
	}
}

// 변경할 비밀번호와 비밀번호 체크가 동일한지 판단하는 함수
function pwIsEq() {
	var pw = $("#af_mpw").val();
		pwChk = $("#af_mpwChk").val();
		
	// 비밀번호가 동일하지 않을 때
	if (pw != pwChk) {
		$("#af_mpwChk_rst").html("비밀번호가 동일하지 않습니다");
		$("#af_mpwChk_rst").css("color", "red");
		return false;
	// 비밀번호가 동일할 때 
	} else {
		// 비밀번호가 6자 미만이면
		if (pw.length < 6) {
			$("#af_mpwChk_rst").html("비밀번호는 6자 이상입니다");
			$("#af_mpwChk_rst").css("color", "red");
			return false;
			
		// 비밀번호가 6자 이상이며 동일할 경우
		} else {
			$("#af_mpwChk_rst").html("비밀번호가 일치합니다");
			$("#af_mpwChk_rst").css("color", "green");
			return true;
		}
	}
}

// 비밀번호가 동일하다면
function pwIsOk() {
	return ( $("#af_mpwChk_rst").html() == "비밀번호가 일치합니다" ) ? true : false;
}


$(document).ready(function() {
	// 비밀번호 입력할때 비밀번호 확인하기
	$("#be_mpw").keyup(function() {
		// 현재 비밀번호가 맞다면
		if (pwIsCor()) {
			$("#af_mpw").keyup(function() {
				$("#af_mpwChk").keyup(function() {
					pwIsEq();
					pwIsOk();
				});
				 pwIsEq();
				 pwIsOk();
			});
		}
	});
	
	// 정보수정 버튼을 누르면
	$("#submitBtn").click(function() {
		var mname = $("#mname").val();
		    mphone = $("#mphone").val();
		   
		// 이름을 입력하지 않았으면
		if (mname == '') {
			alert("이름을 입력하세요");
			return false;
			
		// 핸드폰을 입력하지 않았으면
		} else if (mphone == '') {
			alert("핸드폰을 입력하세요");
			return false;

		// 비밀번호가 아직 아니라면
		} else if (!pwIsOk()) {
			alert("비밀번호를 확인해주세요");
			return false;
			
		// 다 입력했으며 비밀번호가 최종 ok면
		} else if(pwIsOk()) {
			document.modifyForm.action="${path}/modify/modify.do";
			document.modifyForm.submit();
		}
	});
	
});

// 프로필 이미지 바로 반영되서 보여주기
var openFile = function(event) {
    console.log(event);
    var input = event.target;
    
    var reader = new FileReader();
    reader.onload = function() {
        var dataURL = reader.result;
        var output = document.getElementById('prfImg');
        output.src = dataURL;
    };
    reader.readAsDataURL(input.files[0]);
};

</script>
<style>
.col-md-10 .col-md-8 { padding: 5px; } 
</style>
</head>
<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="resources/assets/images/boxed_background/1.jpg"  -->

	<!-- WRAPPER -->
	<div id="wrapper">
     
		<!-- PAGE TITLE -->
		<header id="page-title"> <!-- style="background-image:url('../assets/images/demo/parallax_bg.jpg')" -->
			<div class="container">
				<h1>회원 정보 수정</h1>
			</div>
		</header>


		<section class="container">

			<div class="row">

				<div class="col-md-10">

					<form name="modifyForm" method="post" enctype="multipart/form-data">
						<div class="row">
						
							<div class="form-group">
							
								<div class="col-md-8" style="margin-left: 15%;">
									<img src="${path}/profile/${profile.pfile}" class="img-circle" id="prfImg" width="300" height="250" alt="사진없음">
									<input type="file" name="prfFile" onChange="openFile(event)" />
								</div>
							
								<div class="col-md-8">
									<label style="display: block;">아이디(이메일)</label>
									<input type="text" class="form-control" name="mid" value="${member.mid}" readonly />									
								</div>
								<div class="col-md-8">
									<label>현재 비밀번호</label>&nbsp;&nbsp;&nbsp;<span id="be_mpwChk_rst"></span>
									<input type="password" class="form-control" id="be_mpw" placeholder="현재 비밀번호를 입력하세요" />
								</div>
								<div class="col-md-8">
									<label>변경할 비밀번호</label>&nbsp;&nbsp;&nbsp;<span id="af_mpwChk_rst"></span>
									<input type="password" class="form-control" name="mpw" id="af_mpw" placeholder="변경할 비밀번호를 입력하세요" disabled />
								</div>
								<div class="col-md-8">
									<label>변경할 비밀번호 확인</label>
									<input type="password" class="form-control" id="af_mpwChk" placeholder="변경할 비밀번호를 한번 더 입력하세요" disabled />
								</div>
								<div class="col-md-8">
									<label>이름</label>
									<input type="text" class="form-control" name="mname" id="mname" value="${member.mname}" />
								</div>
								<div class="col-md-8">
									<label>휴대폰</label>
									<input type="text" class="form-control" name="mphone" id="mphone" value="${member.mphone}" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10" >
								<button class="btn btn-success" id="submitBtn">
									<i class="fa fa-check"></i>정보수정</button> 
								<a href="${path}/modify/getPriInfo.do">
									<button class="btn btn-primary">취소</button>
								</a>
							</div>
						</div>
						<input type="hidden" name="mpk" value="${member.mpk}">
					</form>

				</div>
				
			</div>


		</section>

	</div>
	<!-- /WRAPPER -->

</body>
</html>