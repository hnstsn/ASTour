<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- AST : bootstrap을 위한 것들을 모아놓은  jsp page -->
<%@ include file="../include/bootstap_collect.jsp" %>
<script>
/* AST(CSW)
 * 처음화면은 로그인, 회원가입과 로그인은 보여지고 로그아웃은 보여지지 않는다.
 * 로그인하면 로그인, 회원가입과 로그인은 보이지 않고 로그아웃만 보여진다.
 * 로그아웃하면 처음화면처럼 로그인과 회원가입이 보여진다. 
 */
$(document).ready(function() {
 	// 로그인 버튼을 누르면	 
 	$("#loginBtn").click(function() {
 		var mid=$("#mid").val();
		var mpw = $("#mpw").val();
		
		// 아이디를 입력하지 않았으면
		if (mid == '') {
			alert("id를 입력하세요");
			return false;
		// @가 빠져있으면
		} else if (mid.indexOf("@") == -1) {
			alert("@가 없습니다.");
			return false;
		// @뒤에 입력된 것이 없으면
		} else if (mid.indexOf("@") == mid.length-1) {
			alert("@뒤에 입력하세요");
			return false;
		// 아이디 체크 조건이 다 충족됐으면
		} else {
			// 비밀번호를 입력하지 않았으면
			if (mpw == '')
				alert("password를 입력하세요");
			else {
				// 다 입력했으면 ajax로 처리
				$.ajax({
	               type: "post",
	               url: "${path}/member/loginCheck.do",
	               data: "mid="+mid+"&mpw="+mpw,
	               success: function(result) {
	                  // result가  true이면
	                  if (result) {
	                     alert("로그인 되었습니다.");
	                     // 초기화면으로 보내준다. result 받아온거까지 실행되고 화면 전환이 안되기 때문
	                     location.href="${path}";
	                  } else
	                     alert("아이디 혹은 비밀번호가 틀렸습니다.");
	               }
	            });
			}
		}
		
	});
 	
});
</script>

<!-- AST(CSW) : 회원가입 창 popup으로 -->
<script>
	function signin_popup() {
		window.open("${path}/member/insertJoin.do", "회원가입", "width=600, height=700, left=200, top=100");
	}
</script>

<!-- Top Bar -->
<header id="topHead">
	<div class="container">
	
		<!-- AST(CSW)
			login, sign in div와  log out div로 나눠놓음
			before_login	    after_login
	 	-->
	 	<c:choose>
	 		<c:when test="${sessionScope.member == null}">
				<!-- SIGN IN -->
		 		<div class="pull-right nav signin-dd">
					<a id="quick_sign_in" onClick="signin_popup()" data-toggle="dropdown">
						<i class="fa fa-child"></i>
							<span class="hidden-xs"> Sign In</span>
					</a>
				</div>
				<!-- /SIGN IN -->
			
				<!-- LOG IN -->
				<div class="pull-right nav signin-dd">
					<a id="quick_sign_in" data-toggle="dropdown">
						<i class="fa fa-smile-o"></i><span class="hidden-xs"> Log In</span>
					</a>
					
					<div class="dropdown-menu" role="menu" aria-labelledby="quick_sign_in">
	            
		               <h4>Log In</h4>
		               <form method="post" name="login_form" role="form">
		
		                  <div class="form-group"><!-- email -->
		                     <input type="email" id="mid" name="mid" class="form-control" placeholder="ID(email)">
		                  </div>
		
		                  <div class="input-group">
		
		                     <!-- password -->
		                     <input type="password" id="mpw" name="mpw" class="form-control" placeholder="Password">
		                     
		                     <!-- submit button -->
		                     <span class="input-group-btn">
		                     	<input type="button" class="btn btn-success" id="loginBtn" value="Log In" />
		                     </span>
		                     <br />
		                     
		                  </div>
		
		               </form>
		
		            </div>
					
				</div>
				<!-- /LOG IN -->
	 		</c:when>
	 		<c:otherwise>
	 		<!-- 로그아웃 상태일 때 -->
	 			<div class="after_login">
					<!-- LOG OUT -->
					<div class="pull-right nav signin-dd">
						<a id="quick_sign_in" class="log_out" href="${path}/member/logout.do">
							<i class="fa fa-meh-o"></i><span class="hidden-xs"> Log Out</span>
						</a>
					</div>
					<!-- /LOG OUT -->
					<div class="pull-right nav signin-dd">
						<a id="quick_sign_in" class="log_out">
							<span class="hidden-xs"> ${sessionScope.member.mname}님 로그인 중</span>
						</a>
					</div>
				</div>
	 		</c:otherwise>
	 		
	 	</c:choose>
		
	</div>
</header>
<!-- /Top Bar -->

<!-- TOP NAV -->
<header id="topNav" class="topHead">
	<div class="container">

		<!-- Mobile Menu Button -->
		<button class="btn btn-mobile" data-toggle="collapse" data-target=".nav-main-collapse">
			<i class="fa fa-bars"></i>
		</button>

		<!-- Logo text or image -->
		<!-- AST(CSW) : Logo를 클릭하면 처음 Main page인 home.jsp로 이동 -->
		<a class="logo" href="${path}">
			<img src="${path}/resources/assets/images/mainlogo.png" alt="Atropos" />
		</a>

		<!-- Top Nav -->
		<div class="navbar-collapse nav-main-collapse collapse pull-right">
			<nav class="nav-main mega-menu">
				<ul class="nav nav-pills nav-main scroll-menu" id="topMain">
					<li class="dropdown mega-menu-item mega-menu-two-columns">
						<a class="dropdown-toggle" href="${path}/chgPage.do?cpage=10">
							지역선택
						</a>
					</li>
					<li class="dropdown mega-menu-item mega-menu-fullwidth">
						<a class="dropdown-toggle" href="${path}/chgPage.do?cpage=20">
							추천명소
						</a>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle">
							<b>마이페이지</b> <i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${path}/chgPage.do?cpage=30">SNS</a></li>
							<li><a href="${path}/chgPage.do?cpage=40">정보수정</a></li>
						</ul>
					</li>
					
					<li class="dropdown">
						<a class="dropdown-toggle" href="${path}/chgPage.do?cpage=50">
							고객센터
						</a>
					</li>
					
				</ul>
			</nav>
		</div>
		<!-- /Top Nav -->

	</div>
</header>

<span id="header_shadow"></span>
<!-- /TOP NAV -->