<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Atropos - Responsive Multipurpose</title>
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />
<!-- mobile settings -->
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<%@ include file="../include/bootstap_collect.jsp"%>
<!-- Morenizr -->
<script type="text/javascript" src="assets/plugins/modernizr.min.js"></script>


</head>
<body>
	<!-- AST : menu부분을 위한 jsp page -->
	<%@ include file="../include/menu.jsp"%>

	<span id="header_shadow"></span>
	
	<!-- AST : 블로그 전체 틀  -->
	<div id="wrapper">

		<div id="blog">

			<!-- AST : 페이지 타이틀 -->
			<header id="page-title">
				<div class="container">
					<h1>황성빈님의 블로그</h1>
				</div>
			</header>
			<!-- / AST : 페이지 타이틀 -->
			
			<!-- AST : 프로필 배경 & 프로필 사진 -->
			<!-- <div class="container" align="center" style="position: relative">
				<img src="resources/assets/images/prof2.jpg" class="img-circle"
					alt="Cinque Terre" width="900" height="350">
			</div>
			<div class="container" align="center"
				style="position: relative; top: -120px">
				<img src="resources/assets/images/prof.png" class="img-circle"
					alt="Cinque Terre" width="200" height="160">
				<h3>SUNG BEEN</h3>
			</div> -->
			<!-- /AST : 프로필 배경 & 프로필 사진  -->

			<!-- AST : 프로필 또는 그 외 전체 틀   -->
			<section class="container">
				<div class="row">
					<div class="col-md-3">

						<!-- AST : 사람찾기  -->
						<div class="widget">

							<h3>사람 찾기</h3>

							<form method="get" action="#" class="input-group">
								<input type="text" class="form-control" name="s" id="s" value=""
									placeholder="search..." /> <span class="input-group-btn">
									<button class="btn btn-primary">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</form>
						</div>
						<!-- / AST : 사람찾기  -->

						<!-- AST : 개인 프로필  -->
						<div class="widget">

							<h4>프로필</h4>
							<div class="container">
							
							<!--  AST : 프로필 사진 클릭시 확대 -->
							<a href="${path }/resources/assets/images/prof.png" target=_blank>
								<img src="${path }/resources/assets/images/prof.png" class="img-circle"
									alt="Cinque Terre" width="200" height="160">		
							</a>
							<!--  / AST : 프로필 사진 클릭시 확대 -->
							
							</div>
						</div>
						<!-- / AST : 개인 프로필  -->


						<!-- AST : 골라보기 목록  -->
						<div class="widget">

							<h4>게시물 보기</h4>

							<ul class="nav nav-list">
								<li><a href="#"><i class="fa fa-circle-o"></i> 사진</a></li>
								<li><a href="#"><i class="fa fa-circle-o"></i> 동영상</a></li>
								<li><a href="#"><i class="fa fa-circle-o"></i> 리뷰 게시물</a></li>
								<li><a href="#"><i class="fa fa-circle-o"></i> 나의 게시물</a></li>
							</ul>

						</div>
						<!-- / AST : 골라보기 목록  -->

					</div>
					<!-- / AST : 프로필 또는 그 외 전체 틀   -->
					
					<!-- AST : 타임라인  -->
					<div class="col-md-9">
					
						<!-- AST : 타임라인 게시물  -->
						<c:forEach var="sns" items="${list }">
							<div class="item">
							
								<!-- AST : 타임라인 타이틀  -->
								<div class="item-title">
									<h2>
										<a href="${path}/sns/contentview.do?spk=${sns.spk}">${sns.stitle }</a>
									</h2>
									<a href="blog.html" class="label label-default light"><i
										class="fa fa-dot-circle-o"></i> Business</a> <a
										href="blog-post.html#comments"
										class="scrollTo label label-default light"><i
										class="fa fa-comment-o"></i> 3 Comments</a> <span
										class="label label-default light">${sns.sdate }</span>
								</div>
								<!-- / AST : 타임라인 타이틀  -->

								<!-- AST : 타임라인 이미지  -->
								<figure>
									<img src="${path }/${sns.spath}${sns.sfile}" class="img-responsive"
										alt="img" />
								</figure>
								<!-- / AST : 타임라인 이미지  -->

								<!-- AST : 타임라인 내용  -->
								<p>${sns.scontent }</p>
								<!-- / AST : 타임라인 내용  -->
							</div>
						</c:forEach>
						<!-- / AST : 타임라인 게시물  -->
						<form action="${path }/sns/writeview.do">
						<input type=submit value="글쓰기">
						</form>
						<!-- AST : 페이지 넘기기 -->
						<div class="text-center">
							<ul class="pagination">
								<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
							</ul>
						</div>
						<!-- / AST : 페이지 넘기기 -->

					</div>
					<!-- / AST : 타임라인  -->
				</div>
			</section>
		</div>
	</div>
	<!-- / AST : 블로그 전체 틀 -->

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