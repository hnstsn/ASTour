<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!DOCTYPE html>
<html>
<head>
<!-- mobile settings -->
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<!-- SHOP CSS -->
		<link href="${path}/resources/assets/css/portfolio.css" rel="stylesheet" type="text/css" />



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/bootstap_collect.jsp"%>
<%@ include file="../include/sessionCheck.jsp"%>
<style type="text/css">
.deFile:hover { cursor:pointer; }
</style>
</head>



<body>
	<!-- WRAPPER -->
	<div id="wrapper">
	<!-- Modal for full size images on click-->
	<div id="modal01" class="w3-modal w3-black" style="margin-top: 10%"
		onclick="this.style.display='none'">
		<span class="w3-button w3-black w3-xlarge w3-display-topright">×</span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img id="img01" class="w3-image">
			<p id="caption"></p>
		</div>
	</div>
	
	<!-- PAGE TITLE -->
	<header id="page-title">
		<div class="container">
			<h1>${map.member.mname}님의 사진첩</h1>
		</div>
	</header>

		<c:choose>
		<c:when test="${map.blog.size() < 1 && map.profile.size() < 1}">
			<section id="portfolio" class="container">
				<h1>사진이없습니다</h1>
				<!-- CALLOUT -->
				<div class="bs-callout text-center nomargin-bottom">
					<h3><a href="${path}/sns/initSns.do?mpk=${map.member.mpk}" class="btn btn-primary btn-lg">돌아가기</a></h3>
				</div>
				<!-- /CALLOUT -->
			</section>
		</c:when>
		
		<c:otherwise>
			<section id="portfolio" class="container">
				<ul class="nav nav-pills isotope-filter isotope-filter" data-option-key="filter">
					<li ><a href="gallery.do?sort=all&mpk=${map.member.mpk }">전체</a></li>
					<li ><a href="gallery.do?sort=blog&mpk=${map.member.mpk }">게시물사진</a></li>
					<li ><a href="gallery.do?sort=profile&mpk=${map.member.mpk }">프로필사진</a></li>
				</ul>
	
				<div class="row">
					<ul class="sort-destination isotope">
						<c:forEach var="blog" items="${map.blog}">
						<li class="col-sm-6 col-md-4"><!-- item 2 -->
							<div class="item-box">
								<figure>
								<!-- class="img-responsive" -->
									<img class="deFile" src="${path}/sns/${blog.pfile}" onclick="onClick(this)" width="260" height="260" alt="">
								</figure>
							</div>
						</li>
						</c:forEach>
						
						<c:forEach var="profile" items="${map.profile}">
						<li class="col-sm-6 col-md-4"><!-- item 2 -->
							<div class="item-box">
								<figure>
								<!-- class="img-responsive" -->
									<img class="deFile" src="${path}/profile/${profile.pfile}" onclick="onClick(this)" width="260" height="260" alt="">
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
	
	<script type="text/javascript">
	// Modal Image Gallery
	function onClick(element) {
	  document.getElementById("img01").src = element.src;
	  document.getElementById("modal01").style.display = "block";
	  var captionText = document.getElementById("caption");
	  captionText.innerHTML = element.alt;
	}

	var filter = "win16|win32|win64|mac|macintel";
	if (navigator.platform) {
		    if (filter.indexOf(navigator.platform.toLowerCase()) < 0) { //mobile 
		    	$(document).ready(function() {
		    		$('img').className('img-responsive'); 
		    		});
		    } else { //pc
		    }
	}	
	
	</script>
</body>
</html>