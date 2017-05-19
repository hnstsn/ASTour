<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

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

	/* //전체
	$(document).ready(function() {
		$("#loc_change").click(function() {
			var loc = $("#loc_txt").val();
			
			location.href="${path}/selectAttr?loc="+loc;
		
		});
	});
	
	//검색
	$(document).ready(function() {
		$("#loc_all").click(function() {
			location.href="${path}/initAttr";
		});
	});
	
	//명소 검색
	$(document).ready(function() {
		$("#loc_asort1").click(function() {
			location.href="${path}/selectAsort?loc=명소";
		});
	});
	//행사 검색
	$(document).ready(function() {
		$("#loc_asort2").click(function() {
			location.href="${path}/selectAsort?loc=행사";
		});
	}); */
	
</script>

</head>
<body>
	<!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="assets/images/boxed_background/1.jpg"  -->
	<%@ include file="../include/menu.jsp"%>

	<!-- WRAPPER -->
	<div id="wrapper">

		<!-- PAGE TITLE -->
		<header id="page-title">
		<div class="container" style="margin-left: 20%; margin-right: 20%">
			<h1>${title } 리뷰목록</h1>
		</div>
		</header>

		<ul class="nav nav-pills isotope-filter isotope-filter"

			style="margin-left: 20%; margin-right: 20%">
			<!-- data-option-value="*".culture .event class="active" 빼버림 -->
			<li ><a href="#">최신순</a></li>
			<li ><a href="#">평점순</a></li>
			<li ><a href="#">조회순</a></li>
		</ul>

		<div class="row" style="margin-left: 20%; margin-right: 20%">
			<ul class="sort-destination isotope" data-sort-id="isotope-list">
				<!-- 수정 -->
				<%-- <c:forEach var="attraction" items="${list}"> --%>
					<li class="isotope-item col-md-3">
						<!-- item 1 -->
						<div class="item-box fixed-box">
							<figure> <img class="img-responsive"
								src="${path}/resources/image/culture/${image }"
								width="263" height="263" alt=""> </figure>
							<div class="item-box-desc">
								<h4>${atitle }</h4>
								<small class="styleColor">내용1</small>
								<p>내용2</p>
								<div class="text-center">
									<form action="#">
										<input type="hidden" name="name" value="${atitle }">
										<input type="submit" class="btn btn-success" value="상세보기" />
									</form>
								</div>
							</div>
						</div>
					</li>
					
					<li class="isotope-item col-md-3">
						<!-- item 1 -->
						<div class="item-box fixed-box">
							<figure> <img class="img-responsive"
								src="${path}/resources/image/culture/${image }"
								width="263" height="263" alt=""> </figure>
							<div class="item-box-desc">
								<h4>${atitle }</h4>
								<small class="styleColor">내용1</small>
								<p>내용2</p>
								<div class="text-center">
									<form action="#">
										<input type="hidden" name="name" value="${atitle }">
										<input type="submit" class="btn btn-success" value="상세보기" />
									</form>
								</div>
							</div>
						</div>
					</li>
					
					<li class="isotope-item col-md-3">
						<!-- item 1 -->
						<div class="item-box fixed-box">
							<figure> <img class="img-responsive"
								src="${path}/resources/image/culture/${image }"
								width="263" height="263" alt=""> </figure>
							<div class="item-box-desc">
								<h4>${atitle }</h4>
								<small class="styleColor">내용1</small>
								<p>내용2</p>
								<div class="text-center">
									<form action="#">
										<input type="hidden" name="name" value="${atitle }">
										<input type="submit" class="btn btn-success" value="상세보기" />
									</form>
								</div>
							</div>
						</div>
					</li>
				<%-- </c:forEach> --%>
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
