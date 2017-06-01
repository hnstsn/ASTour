<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->

<head>
<meta charset="utf-8" />
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />
<!-- mobile settings -->
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<%@ include file="../include/bootstap_collect.jsp"%>
</head>
<!-- WRAPPER -->
<div id="wrapper">

	<!-- PAGE TITLE -->
	<header id="page-title">
	<div class="container" style="margin-left: 20%; margin-right: 20%">
		<h1>사람찾기</h1>
	</div>
	</header>

	<!-- AST(CSW) : 사람 검색해서 없으면 없다고 있으면 보여주고 -->
	<div class="row" style="margin-left: 20%; margin-right: 20%">
		<ul class="sort-destination isotope" data-sort-id="isotope-list">
			<c:choose>
				<c:when test="${peopleList.size() < 1}">
					<h2>찾고 계신 사람이 없습니다.</h2>
					<h2>이름을 다시 한번 확인해주세요.</h2>
				</c:when>
				<c:otherwise>
					<c:forEach var="people" items="${peopleList}">
						<li class="isotope-item col-sm-6 col-md-4 design">
							<!-- item 3 -->
							<div class="item-box">
								<figure>
									<a href="${path}/sns/findPepole.do?mpk=${people.mpk}" class="item-hover" >
										<span class="overlay color3"></span> 
										<span class="inner"></span>
									</a>
									<img src="${path}/profile/${people.pfile}" width="260" height="260" alt="프로필 사진 없음">
								</figure> 
								<div class="item-box-desc">
									<h4>${people.mname}님</h4>
									<h5>${people.mid}</h5>
								</div>
							</div>
						</li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
		</ul>
	</div>
	<!-- /.masonry-container -->
</div>
<!-- /WRAPPER -->

</html>
