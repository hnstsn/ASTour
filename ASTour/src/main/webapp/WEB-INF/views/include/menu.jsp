<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script>
/* AST
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
			else {
				//////로그인//////
				//////ajax/////
				///////처리//////
				// ajax에서 로그인되면 집어넣자
		 		//$(".before_login").hide();
				//$(".after_login").show();
			}
		}
			
	});
 	
	// 로그아웃을 누르면
 	$(".log_out").click(function() {
		$(".before_login").show();
 		$(".after_login").hide();
	});   
});
</script>

<script>
// AST : 로그인 버튼 누르면  팝업창 띄우기
function open_login() {
	alert("눌렀");
	window.open('{$path}/member/login.do', 'Log In', 'width=300, height=200');
}
</script>

<!-- Top Bar -->
<header id="topHead">
	<div class="container">
	
		<!-- AST
			login, sign in div와 log out div로 나눠놓음
			before_login	    after_login
	 	-->
		<div class="before_login">
			<!-- SIGN IN -->
	 		<div class="pull-right nav signin-dd">
				<a id="quick_sign_in" href="page-signin.html" data-toggle="dropdown">
					<i class="fa fa-child"></i><span class="hidden-xs"> Sign In</span>
				</a>
			</div>
			<!-- /SIGN IN -->
		
			<!-- LOG IN -->
			<div class="pull-right nav signin-dd">
				<!-- <a id="quick_sign_in" class="log_in" data-toggle="dropdown"> -->
				<a id="quick_sign_in" class="log_in" onClick="open_login()">
					<i class="fa fa-smile-o"></i><span class="hidden-xs"> Log In</span>
				</a>
				<div class="dropdown-menu" role="menu" aria-labelledby="quick_sign_in">
				
					<h4>Log In</h4>
					<form method="post" role="form">

						<div class="form-group"><!-- email -->
							<input type="email" id="mid" class="form-control" placeholder="ID(email)">
						</div>

						<div class="input-group">

							<!-- password -->
							<input type="password" id="mpw" class="form-control" placeholder="Password">
							
							<!-- submit button -->
							<span class="input-group-btn">
									<button class="btn btn-primary" id="loginBtn">Log In</button>
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
		<!-- AST : Logo를 클릭하면 처음 Main page인 home.jsp로 이동 -->
		<a class="logo" href="${path}">
			<img src="resources/assets/images/logo.png" alt="Atropos" />
		</a>

		<!-- Top Nav -->
		<div class="navbar-collapse nav-main-collapse collapse pull-right">
			<nav class="nav-main mega-menu">
				<ul class="nav nav-pills nav-main scroll-menu" id="topMain">
					<li class="dropdown mega-menu-item mega-menu-two-columns">
						<a class="dropdown-toggle" href="#">
							지역선택 <i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li>
								<div class="mega-menu-content">
									<div class="row">

										<div class="col-md-6">
											<ul class="sub-menu">
												<li>
													<ul class="sub-menu">

														<li><a href="shortcodes-rows.html"><i class="fa fa-star-o"></i> Shortcodes</a></li>
														<li><a href="page-about-us.html"><i class="fa fa-check-square-o"></i> About Us</a></li>
														<li><a href="page-about-me.html"><i class="fa fa-check-square-o"></i> About Me</a></li>
														<li><a href="page-team.html"><i class="fa fa-check-square-o"></i> Team</a></li>
														<li><a href="page-services.html"><i class="fa fa-check-square-o"></i> Services</a></li>
														<li><a href="page-faq.html"><i class="fa fa-check-square-o"></i> FAQ</a></li>
														<li><a href="page-support.html"><i class="fa fa-check-square-o"></i> Support</a></li>
														<li><a href="page-privacy-policy.html"><i class="fa fa-check-square-o"></i> Privacy Policy</a></li>
														<li><a href="page-terms-and-conditions.html"><i class="fa fa-check-square-o"></i> Terms Page</a></li>
														<li><a href="page-invoice.html"><i class="fa fa-check-square-o"></i> Invoice</a></li>
														<li class="dropdown-submenu">
															<a href="#"><i class="fa fa-check-square-o"></i> Contact</a>
															<ul class="dropdown-menu">
																<li><a href="contact-us.html">Version 1</a></li>
																<li><a href="contact-us-2.html">Version 2</a></li>
																<li><a href="contact-us-3.html">Version 3</a></li>
																<li><a href="contact-us-4.html">Version 4</a></li>
															</ul>
														</li>
														<li><a href="page-sitemap.html"><i class="fa fa-sitemap"></i> Sitemap</a></li>
													</ul>
												</li>
											</ul>
										</div>

										<div class="col-md-6">
											<ul class="sub-menu">
												<li>
													<ul class="sub-menu">
														<li><a href="page-testimonials.html"><i class="fa fa-check-square-o"></i> Testimonials</a></li>
														<li><a href="page-pricing.html"><i class="fa fa-check-square-o"></i> Pricing</a></li>
														<li><a href="page-signin.html"><i class="fa fa-check-square-o"></i> Login</a></li>
														<li><a href="page-signup.html"><i class="fa fa-check-square-o"></i> Register</a></li>
														<li><a href="page-404.html"><i class="fa fa-check-square"></i> 404 Error</a></li>
														<li><a href="page-maintenance.html"><i class="fa fa-check-square"></i> Maintenance</a></li>
														<li class="dropdown-submenu">
															<a href="#"><i class="fa fa-check-square"></i> Coming Soon</a>
															<ul class="dropdown-menu">
																<li><a href="page-coming-soon-image.html">Coming Soon - Image</a></li>
																<li><a href="page-coming-soon-video.html">Coming Soon - Video</a></li>
															</ul>
														</li>
														<li class="dropdown-submenu">
															<a href="#"><i class="fa fa-check-square"></i> Custom Header</a>
															<ul class="dropdown-menu">
																<li><a href="page-header-basic.html">Basic</a></li>
																<li><a href="page-header-image.html">Image</a></li>
																<li><a href="page-header-overlay1.html">Overlay 1</a></li>
																<li><a href="page-header-overlay2.html">Overlay 2</a></li>
																<li><a href="page-header-overlay3.html">Overlay 3</a></li>
																<li><a href="page-header-delayed-parallax.html">Delayed Parallax</a></li>
																<li><a href="page-header-standard-parallax.html">Standard Parallax</a></li>
															</ul>
														</li>
														<li><a href="page-full-width.html"><i class="fa fa-check-square-o"></i> Full width</a></li>
														<li><a href="page-left-sidebar.html"><i class="fa fa-check-square-o"></i> Left Sidebar</a></li>
														<li><a href="page-right-sidebar.html"><i class="fa fa-check-square-o"></i> Right Sidebar</a></li>
														<li><a href="email-template.html"><i class="fa fa-envelope"></i>Email Template</a></li>
													</ul>
												</li>
											</ul>
										</div>
												
									</div>
								</div>
							</li>
						</ul>
					</li>
					<li class="dropdown mega-menu-item mega-menu-fullwidth">
						<a class="dropdown-toggle" href="#">
							추천명소 <i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li>
								<div class="mega-menu-content">
									<div class="row">
										<div class="col-md-3">
											<ul class="sub-menu">
												<li>
													<span class="mega-menu-sub-title">General Features</span>
													<ul class="sub-menu">
														<li><a href="feature-grid-system.html">Grid System</a></li>
														<li><a href="feature-icons.html">Icons</a></li>
														<li><a href="feature-pricing-tables.html"><em>Pricing Tables</em></a></li>
														<li><a href="feature-testimonials.html"><em>Testimonials</em></a></li>
														<li><a href="email-template.html"><em>Email Template</em></a></li>
														<li><a href="shortcodes-rows.html"><em>Shortcodes</em></a></li>
														<li><a href="feature-animations.html">Animations</a></li>
														<li><a href="feature-typograpy.html">Typograpy</a></li>
													</ul>
												</li>
											</ul>
										</div>
										<div class="col-md-3">
											<ul class="sub-menu">
												<li>
													<span class="mega-menu-sub-title">Sliders</span>
													<ul class="sub-menu">
														<li><a href="feature-content-carousel.html">Content Carousel</a></li>
														<li><a href="revolution-official-1.html">(17) Premium Revolution Slider</a></li>
													</ul>
												</li>
											</ul>
										</div>
										<div class="col-md-3">
											<ul class="sub-menu">
												<li>
													<span class="mega-menu-sub-title">Headers</span>
													<ul class="sub-menu">
														<li><a href="header-1.html">Header Version 1</a></li>
														<li><a href="header-2.html">Header Version 2</a></li>
														<li><a href="header-3.html">Header Version 3</a></li>
														<li><a href="header-4.html">Header Version 4</a></li>
													</ul>
												</li>
											</ul>
										</div>
										<div class="col-md-3">
											<ul class="sub-menu">
												<li>
													<span class="mega-menu-sub-title">Unique Bonuses</span>
													<ul class="sub-menu">
														<li><a href="onepage-superslides.html" target="_blank">Onepage - Superslides</a></li>
														<li><a href="onepage-revolution.html" target="_blank">Onepage - Revolution</a></li>
														<li><a href="email-template.html">Email Template</a></li>
													</ul>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" href="#">
							<b>마이페이지</b> <i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="magazine-home.html">Magazine - Home</a></li>
							<li><a href="magazine-category.html">Magazine - Category</a></li>
							<li><a href="magazine-single.html">Magazine - Single</a></li>
							<li class="divider"></li>
							<li><a href="realestate-home.html">Real Estate - Home</a></li>
							<li><a href="realestate-list.html">Real Estate - List</a></li>
							<li><a href="realestate-single.html">Real Estate - Single</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" href="#">
							고객센터 <i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="shop-home.html">Shop - Home</a></li>
							<li class="divider"></li>
							<li><a href="shop-full-width.html">Shop Full Width</a></li>
							<li><a href="shop-product-full-width.html">Shop Product Full Width</a></li>
							<li class="divider"></li>
							<li><a href="shop-sidebar.html">Shop Sidebar</a></li>
							<li><a href="shop-product-sidebar.html">Shop Product Sidebar</a></li>
							<li class="divider"></li>
							<li><a href="shop-cart.html">Shop Cart</a></li>
							<li><a href="shop-cc-pay.html">Shop Credit Card</a></li>
						</ul>
					</li>
					
				</ul>
			</nav>
		</div>
		<!-- /Top Nav -->

	</div>
</header>

<span id="header_shadow"></span>
<!-- /TOP NAV -->