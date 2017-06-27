<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/bootstap_collect.jsp"%>
<%@ include file="../include/sessionCheck.jsp"%>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">

	<!-- PAGE TITLE -->
	<header id="page-title">
		<div class="container">
			<h1>${map.member.mname}님의 사진첩</h1>
		</div>
	</header>
	<c:choose>
		<c:when test="${map.blog.size() < 1 && map.profile.size() < 1}">
			<section id="portfolio" class="container">
				<h1>프로필사진이없습니다</h1>
				<!-- CALLOUT -->
				<div class="bs-callout text-center nomargin-bottom">
					<h3><a href="${path}/sns/initSns.do?mpk=${map.member.mpk}" class="btn btn-primary btn-lg">돌아가기</a></h3>
				</div>
				<!-- /CALLOUT -->
			</section>
		</c:when>
		
		<c:otherwise>
			<section id="portfolio" class="container">
				<ul class="nav nav-pills isotope-filter isotope-filter" data-sort-id="isotope-list" data-option-key="filter">
					<li data-option-value="*" class="active"><a href="#">전체</a></li>
					<li data-option-value=".blog"><a href="#">게시물사진</a></li>
					<li data-option-value=".profile"><a href="#">프로필사진</a></li>
				</ul>
	
				<div class="row">
					<ul class="sort-destination isotope" data-sort-id="isotope-list">
						<c:forEach var="blog" items="${map.blog}">
						<li class="isotope-item col-sm-6 col-md-4 blog"><!-- item 2 -->
							<div class="item-box">
								<figure>
									<a class="item-hover lightbox" href="${path}/sns/${blog.pfile}" target=_blank data-plugin-options='{"type":"iframe"}'>
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
										</span>
									</a>
									<img src="${path}/sns/${blog.pfile}" width="260" height="260" alt="">
								</figure>
							</div>
						</li>
						</c:forEach>
						
						<c:forEach var="profile" items="${map.profile}">
						<li class="isotope-item col-sm-6 col-md-4 profile"><!-- item 2 -->
							<div class="item-box">
								<figure>
									<a class="item-hover lightbox" href="${path}/profile/${profile.pfile}" target=_blank data-plugin-options='{"type":"iframe"}'>
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
										</span>
									</a>
									<img src="${path}/profile/${profile.pfile}" width="260" height="260" alt="">
								</figure>
							</div>
						</li>
						</c:forEach>
					</ul>
	
				</div><!-- /.masonry-container -->
	
				<!-- CALLOUT -->
				<div class="bs-callout text-center nomargin-bottom">
					<h3><a href="${path}/sns/initSns.do?mpk=${map.member.mpk}" class="btn btn-primary btn-lg">돌아가기</a></h3>
				</div>
				<!-- /CALLOUT -->
	
			</section>
		
		</c:otherwise>
	</c:choose>


	</div>
	<!-- /WRAPPER -->
</body>
</html>