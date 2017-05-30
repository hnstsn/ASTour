<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<%@ include file="../include/bootstap_collect.jsp"%>
<%@ include file="../include/sessionCheck.jsp"%>
<!-- Morenizr -->
<script type="text/javascript" src="assets/plugins/modernizr.min.js"></script>
</head>

<!-- AST : 블로그 전체 틀  -->
<div id="wrapper">

	<div id="blog">

		<!-- AST : 페이지 타이틀 -->
		<header id="page-title">
			<div class="container">
				<h1>${memList[0].mname }블로그</h1>
			</div>
		</header>
		<!-- / AST : 페이지 타이틀 -->

		<!-- AST : 프로필 또는 그 외 전체 틀   -->
		<section class="container">
			<div class="row">
				<div class="col-md-3">

					<!-- AST : 사람찾기  -->
					<div class="widget">

						<h3>사람 찾기</h3>

						<form method="get" action="${path}/sns/snsPepole.do"
							class="input-group">
							<input type="text" class="form-control" name="pepole_id"
								id="pepole_id" value="" placeholder="ID이메일을입력하시오..." /> <span
								class="input-group-btn">
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
								<img src="${path}/profile/${memList[0].pfile}"
								class="img-circle" alt="Cinque Terre" width="200" height="160">
							</a>
							<!--  / AST : 프로필 사진 클릭시 확대 -->

						</div>
					</div>
					<!-- / AST : 개인 프로필  -->


					<!-- AST : 골라보기 목록  -->
					<div class="widget">

						<h4>게시물 보기</h4>
						<ul class="nav nav-list">
							<li><a
								href="${path }/sns/snsSelect.do?mpk=${memList[0].mpk}"><i
									class="fa fa-circle-o"></i> 전체 보기</a></li>
							<li><a
								href="${path }/sns/reviewSelect.do?mpk=${memList[0].mpk}"><i
									class="fa fa-circle-o"></i> 리뷰 게시물</a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i> 나의 게시물</a></li>
							<c:if test="${mpk eq memList[0].mpk }">
								<li><a href="${path }/sns/writeview.do?mpk=${mpk }"> <i
										class="fa fa-circle-o"></i> 글쓰기
								</a></li>
							</c:if>
						</ul>

					</div>
					<!-- / AST : 골라보기 목록  -->

				</div>
				<!-- / AST : 프로필 또는 그 외 전체 틀   -->

				<!-- AST : 타임라인  -->
				<div class="col-md-9">

					<!-- AST : 타임라인 게시물  -->
					<c:forEach var="sns" items="${list }">
						<div class="item"
							style="margin-bottom: 30px; padding-bottom: 30px">

							<!-- AST : 타임라인 타이틀  -->
							<div class="item-title">
								<h2>
									<a
										href="${path}/snsdetails/contentview.do?spk=${sns.spk}&mpk=${mpk}&name=${memList[0].mname }&mmpk=${memList[0].mpk}">${sns.stitle }</a>
								</h2>
								<a href="blog.html" class="label label-default light"><i
									class="fa fa-dot-circle-o"></i>${sns.ssort }</a> <a
									href="blog-post.html#comments"
									class="scrollTo label label-default light"><i
									class="fa fa-comment-o"></i> 3 Comments</a> <span
									class="label label-default light"> <fmt:formatDate
										value="${sns.sdate }" pattern="yyyy-MM-dd a HH:mm:ss" />
								</span>
								<!--  -->
								<span class="label label-default light">${sns.shits }</span>
							</div>
							<!-- / AST : 타임라인 타이틀  -->


							<!-- AST : 타임라인 이미지  -->
							<c:forEach var="file" items="${snsFileList }">
								<c:if test="${file.spk == sns.spk}">
									<img src="${path}/sns/${file.sffile}" class="img-rounded"
										alt="img" width="300" height="200" />
								</c:if>
							</c:forEach>
							<!-- / AST : 타임라인 이미지  -->

							<!-- AST : 타임라인 내용  -->
							<p>${sns.scontent }</p>
							<!-- / AST : 타임라인 내용  -->
						</div>
					</c:forEach>
					<!-- / AST : 타임라인 게시물  -->

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

</html>