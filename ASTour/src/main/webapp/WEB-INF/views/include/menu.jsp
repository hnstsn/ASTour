<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script>
/* AST(CSW)
 * 처음화면은 로그인, 회원가입과 로그인은 보여지고 로그아웃은 보여지지 않는다.
 * 로그인하면 로그인, 회원가입과 로그인은 보이지 않고 로그아웃만 보여진다.
 * 로그아웃하면 처음화면처럼 로그인과 회원가입이 보여진다. 
 */
$(document).ready(function() {
	// 초기화면  setting
  	$(".before_login").show();
	$(".after_login").hide();
	
 	// 로그인 버튼을 누르면	 
 	$("#loginBtn").click(function() {
 		// 새창으로 띄우자 아래것들 다 가지고 새로운 jsp에서 활용해야 된다.
 		var mid=$("#mid").val();
		var mpw = $("#mpw").val();
		
		// 아이디를 입력하지 않았으면
		if (mid == '')
			alert("id를 입력하세요");
		// @가 빠져있으면
		else if (mid.indexOf("@") == -1)
			alert("@가 없습니다.");
		// @뒤에 입력된 것이 없으면
		else if (mid.indexOf("@") == mid.length-1)
			alert("@뒤에 입력하세요");
		// 아이디 체크 조건이 다 충족됐으면
		else {
			// 비밀번호를 입력하지 않았으면
			if (mpw == '')
				alert("password를 입력하세요");
			// 아이디와 비밀번호 모두 입력했을 경우 ajax로 로그인 됐는지 안됐는지 알려준다.
			else {
				$.ajax({
					type: "post",
					url: "${path}/member/loginCheck",
					data: "mid="+mid+"&mpw="+mpw,
					success: function(result) {
						// result가  true이면
						if (result) {
							alert("로그인 하였습니다.");
							$(".before_login").hide();
							$(".after_login").show();
						} else
							// false를 리턴 받았을 경우
							alert("아이디 혹은 비밀번호가 틀렸습니다.");
					}
				});
			}
		}
		
	});
 	
	// 로그아웃을 누르면 -> 나중에 컨트롤러 가서 session 해제해줘야 한다.
 	$(".log_out").click(function() {
		$(".before_login").show();
 		$(".after_login").hide();
	});   
});
</script>

<!-- AST(CSW) : 회원가입 창 popup으로 -->
<script>
	function signin_popup() {
		window.open("${path}/member/memberJoin.do", "회원가입", "width=600, height=700, left=200, top=100");
	}
</script>

<!-- Top Bar -->
<header id="topHead">
	<div class="container">
	
		<!-- AST(CSW)
			login, sign in div와  log out div로 나눠놓음
			before_login	    after_login
	 	-->
		<div class="before_login">
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
				<a id="quick_sign_in" class="log_in" data-toggle="dropdown">
					<i class="fa fa-smile-o"></i><span class="hidden-xs"> Log In</span>
				</a>
				
				<div class="dropdown-menu" role="menu" aria-labelledby="quick_sign_in">
            
	               <h4>Log In</h4>
	               <form method="post" name="login_form"v role="form">
	
	                  <div class="form-group"><!-- email -->
	                     <input type="email" id="mid" class="form-control" placeholder="ID(email)">
	                  </div>
	
	                  <div class="input-group">
	
	                     <!-- password -->
	                     <input type="password" id="mpw" class="form-control" placeholder="Password">
	                     
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
		</div>
		
		<div class="after_login">
			<!-- LOG OUT -->
			<div class="pull-right nav signin-dd">
				<a id="quick_sign_in" class="log_out" href="#" data-toggle="dropdown">
					<i class="fa fa-meh-o"></i><span class="hidden-xs"> Log Out</span>
				</a>
			</div>
			<!-- /LOG OUT -->
		</div>

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
			<img src="resources/assets/images/logo.png" alt="Atropos" />
		</a>

		<!-- Top Nav -->
		<div class="navbar-collapse nav-main-collapse collapse pull-right">
			<nav class="nav-main mega-menu">
				<ul class="nav nav-pills nav-main scroll-menu" id="topMain">
					<li class="dropdown mega-menu-item mega-menu-two-columns">
						<a class="dropdown-toggle" href="#">
							지역선택
						</a>
					</li>
					<li class="dropdown mega-menu-item mega-menu-fullwidth">
						<a class="dropdown-toggle" href="${path}/initAttr">
							추천명소
						</a>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" href="#">
							<b>마이페이지</b> <i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="magazine-home.html">SNS</a></li>
							<li><a href="magazine-category.html">정보수정</a></li>
						</ul>
					</li>
					
					<li class="dropdown">
						<a class="dropdown-toggle" href="#">
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