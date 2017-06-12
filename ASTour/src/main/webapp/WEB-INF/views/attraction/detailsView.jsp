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
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

<!-- mobile settings -->
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<style>
	hr.two {width: 100%; color: green; border: thin solid red; }
	p.thicker {font-weight: 900;}
</style>
</head>
	
<%--  <jsp:include page="../include/menu.jsp" /> --%>
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
						   	<div class="container">               
  								<img src="${path}/resources/image/culture/${list[0].aimage }" class="img-rounded" width="525" height="400"> 
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

							<!-- product description -->
							<div class="container">
  							<h2>${list[0].atitle }</h2>
  							</div>
  							<div class="well well-sm" style="width: 100%">
  								<ul>
									<li>
									<h5>주소 : ${list[0].acity } ${list[0].agu } ${list[0].aaddress }</h5>
									</li>
								</ul>
							</div>
							<div class="well well-sm" style="width: 100%">
								<ul>
									<li>
									<h5>문의 : ${list[0].atel }</h5>
									</li>
								</ul>
							</div>
							<div class="well well-sm" style="width: 100%">
  								<ul>
									<li>
									<h5>${list[0].aintro}</h5>
									</li>
								</ul>
							</div>
							<div class="well well-sm" style="width: 100%">
								<ul>
									<li>
									<h5>홈페이지: <a href="${list[0].ahomepage }" target=_blank>${list[0].ahomepage }</a></h5>
									</li>	
								</ul>
  							</div>
  							
							
							<!-- /product description -->
						</form>
						<!-- product detail -->
						<div style="margin-top: 10%" align="center">
							<form action="${path }/reViewList.do" method="post">
									<input type="hidden" name="review_AIMAGE" value="${list[0].aimage }"> 
									<input type="hidden" name="review_ATITLE" value="${list[0].atitle }"> 
									<input type="submit" class="btn btn-success" value="관련리뷰보기">
							</form>
						</div>
					</div>
				</div>
				<hr class="two" />
				<div class="well well-sm" style="width: 100%;">
					<p class="thicker">${list[0].acontent }</p>
  				</div>
				<hr />
			</section>
		</div>
	</div>
	<!-- /WRAPPER -->

</html>