<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->


<head>
<meta charset="utf-8" />
<title>Atropos - Responsive Multipurpose</title>
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

<!-- mobile settings -->
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />

<%@ include file="../include/bootstap_collect.jsp"%>

<script type="text/javascript">

	$(document).ready(function() {
		$("#search_loc").click(function() {
			var loc = $("#loc_txt").val();
			location.href="initDetails?name="+loc;
		});
	});
</script>

</head>
<body>
	<!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="assets/images/boxed_background/1.jpg"  -->
	<%@ include file="../include/menu.jsp"%>

	<!-- WRAPPER -->
	<div id="wrapper">

		<!-- PAGE TITLE -->
		<header id="page-title">
		<div class="container"  style="margin-left: 20%; margin-right: 20%">
			<h1>추천장소 & 행사</h1>
		</div>
		</header>

		<ul class="nav nav-pills isotope-filter isotope-filter"
			data-sort-id="isotope-list" data-option-key="filter" style="margin-left: 20%; margin-right: 20%">
			<li data-option-value="*" class="active"><a href="#">전체</a></li>
			<li data-option-value=".culture"><a href="#">추천장소</a></li>
			<li data-option-value=".event"><a href="#">행사</a></li>
			<li><input class="form-control" id="loc_txt" type="text"></li>
			<li data-option-value=""><a
				href="${path}/initDetails?name=${attraction.SNAME }" id="search_loc">검색</a></li>
		</ul>

		<div class="row" style="margin-left: 20%; margin-right: 20%">
			<ul class="sort-destination isotope" data-sort-id="isotope-list">
				<!-- 수정 -->
				<c:forEach var="attraction" items="${list}">
					<li class="isotope-item col-md-3 ${attraction.AACTION }">
						<!-- item 1 -->
						<div class="item-box fixed-box">
							<figure> <img class="img-responsive"
								src="${path}/resources/image/culture/${attraction.AIMAGE }"
								width="263" height="263" alt=""> </figure>
							<div class="item-box-desc">
								<h4>${attraction.ATITLE }</h4>
								<small class="styleColor">${attraction.ASORT }</small>
								<p>${attraction.ACONTENTS }</p>
								<div class="text-center">
									<a href="${path}/initDetails?name=${attraction.ATITLE }">
										<button type="button" class="btn btn-success">상세보기</button>
									</a>
								</div>
							</div>
						</div>
					</li>
				</c:forEach>
				<!-- 수정끝 -->

			</ul>
		</div>
		<!-- /.masonry-container -->
	</div>
	<!-- /WRAPPER -->



	<!-- FOOTER -->
	<footer> <!-- copyright , scrollTo Top -->
	<div class="footer-bar">
		<div class="container">
			<span class="copyright">Copyright &copy; Your Company, LLC .
				All Rights Reserved.</span> <a class="toTop" href="#topNav">BACK TO TOP
				<i class="fa fa-arrow-circle-up"></i>
			</a>
		</div>
	</div>
	<!-- copyright , scrollTo Top --> </footer>
	<!-- /FOOTER -->
</body>
</html>

