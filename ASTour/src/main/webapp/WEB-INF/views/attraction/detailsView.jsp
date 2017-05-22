<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<%@ include file="../include/bootstap_collect.jsp"%>
<meta charset="utf-8" />
<title>Atropos - Responsive Multipurpose</title>
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

<!-- mobile settings -->
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />

</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<!-- STYLESWITCHER - REMOVE ON PRODUCTION/DEVELOPMENT -->
	<div id="switcher">
		<div class="content-switcher">
			<h4>STYLE OPTIONS</h4>

			<p>10 Predefined Color Schemes</p>

			<p>CHOOSE YOUR COLOR SKIN</p>
			<label><input class="dark_switch" type="radio"
				name="color_skin" id="is_light" value="light" checked="checked" />
				Light</label> <label><input class="dark_switch" type="radio"
				name="color_skin" id="is_dark" value="dark" /> Dark</label>
			<hr />

			<p>CHOOSE YOUR LAYOUT STYLE</p>
			<label><input class="boxed_switch" type="radio"
				name="layout_style" id="is_wide" value="wide" checked="checked" />
				Wide</label> <label><input class="boxed_switch" type="radio"
				name="layout_style" id="is_boxed" value="boxed" /> Boxed</label>
			<p>Patterns for Boxed Version</p>

		</div>
	</div>

	<!-- WRAPPER -->
	<div id="wrapper">
		<div id="shop">
			<!-- PAGE TITLE -->
			<header id="page-title">
				<div class="container">
					<h1>상세보기</h1>
				</div>
			</header>

			<section class="container">

				<div class="row">
					<div class="col-sm-6 col-md-6">
						<div class="owl-carousel controlls-over product-image"
							data-plugin-options='{"items": 1, "singleItem": true, "navigation": true, "pagination": true, "transitionStyle":"fadeUp"}'>

							<div>
								<img alt="" class="img-responsive"
									src="${path}/resources/image/culture/${list[0].AIMAGE }">
							</div>

						</div>
					</div>

					<div class="col-sm-6 col-md-6">
						<!-- product detail -->
						<form class="form-inline productDescription noajax" method="get"
							action="shop-cart.html" role="form">

							<!-- hidden fields -->
							<input type="hidden" name="action" value="cart_add" /> <input
								type="hidden" name="product_id" value="1" />

							<h2 class="product-title">${list[0].ATITLE }</h2>

							<!-- product description -->
							<div class="desc">
								<h3>주소 : ${list[0].AADDRESS }</h3>
								<h3>문의 : ${list[0].ATEL }</h3>
								<h2>
									홈페이지: <a href="${list[0].AHOMEPAGE }">${list[0].AHOMEPAGE }</a>
								</h2>
								
							</div>
							
							<!-- /product description -->
						</form>
						<!-- product detail -->
						<div style="margin-top: 10%" align="center">
							<form action="${path }/reViewList" method="post">
									<input type="hidden" name="review_AIMAGE" value="${list[0].AIMAGE }"> 
									<input type="hidden" name="review_ATITLE" value="${list[0].ATITLE }"> 
									<input type="submit" class="btn btn-success" value="관련리뷰보기">
							</form>
						</div>
					</div>
				</div>

				<hr />
				<div>
					<h4>${list[0].ACONTENT }</h4>
				</div>
				
				
				

				<hr />



			</section>
		</div>
	</div>
	<!-- /WRAPPER -->

	<!-- FOOTER -->
	<footer>
		<!-- copyright , scrollTo Top -->
		<div class="footer-bar">
			<div class="container">
				<span class="copyright">Copyright &copy; Your Company, LLC .
					All Rights Reserved.</span> <a class="toTop" href="#topNav">BACK TO
					TOP <i class="fa fa-arrow-circle-up"></i>
				</a>
			</div>
		</div>
		<!-- copyright , scrollTo Top -->
	</footer>
	<!-- /FOOTER -->

</body>
</html>