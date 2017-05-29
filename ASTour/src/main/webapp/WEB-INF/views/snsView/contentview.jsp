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
<!-- Morenizr -->
<script type="text/javascript" src="assets/plugins/modernizr.min.js"></script>
<script>
/* $(document).ready(function() {
	$("#delete").click(function() {
		if (confirm("정말로 삭제하시겠습니까?")) {
         location.href="${path}/sns/delete.do?spk=${list[0].spk }"
		}
	});
}); */
</script>
</head>
<!-- WRAPPER -->
<div id="wrapper">

	<div id="blog">

		<!-- PAGE TITLE -->
		<header id="page-title">
			<div class="container">
				<h1>${name }블로그</h1>
			</div>
		</header>

		<section class="container">

			<div class="row">
				<div class="left col-md-12">

					<!-- article title -->
					<header class="blog-post">
						<h1>${contenlist[0].stitle }</h1>
						<small class="fsize13"> <a href="blog.html"
							class="label label-default light"><i
								class="fa fa-dot-circle-o"></i>${contenlist[0].ssort }</a> <a
							href="#comments" class="scrollTo label label-default light"><i
								class="fa fa-comment-o"></i> 3 Comments</a> <span
							class="label label-default light"> <fmt:formatDate
									value="${contenlist[0].sdate }" pattern="yyyy-MM-dd a HH:mm:ss" />
						</span> <span class="label label-default light">${contenlist[0].shits }</span>
						</small>
					</header>

					<!-- carousel -->
					<div class="owl-carousel text-center controlls-over"
						data-plugin-options='{"items": 1, "singleItem": true, "navigation": true, "pagination": true, "autoPlay": true, "transitionStyle":"fadeUp"}'>
						<!-- transitionStyle: fade, backSlide, goDown, fadeUp,  -->
						<c:forEach var="file" items="${fileList }">
							<div class="item">
								<img src="${path}/profile/${file.sffile}" class="img-rounded"
									width="1200" height="600" alt="img" />
							</div>
						</c:forEach>
						<!-- <div class="item">
							<img src="assets/images/demo/screens/scr4.jpg"
								class="img-responsive" alt="img" />
						</div> -->
					</div>


					<!-- article content -->
					<article>
						<p class="dropcap">${contenlist[0].scontent }</p>
					</article>
					<hr />

					<div class="divider">
						<!-- divider -->
						<i class="fa fa-star"></i>
					</div>

					<!-- COMMENTS -->
					<div id="comments">
						<h2>댓글</h2>

						<c:forEach var="re" items="${replyView }">
							<div class="comment">
								<!-- user-avatar -->
								<span class="user-avatar"> <img
									class="pull-left media-object"
									src="${path}/profile/${re.pfile}" width="64" height="64" alt="">
								</span>

								<div class="media-body-1">
									<c:if test="${mpk eq re.mpk}">
										<a style="margin-left: 1%" href="#commentForm"
											class="scrollTo replyBtn">삭제</a>
										<a href="#commentForm" class="scrollTo replyBtn">수정</a>
									</c:if>
									<h4 class="media-heading bold">${re.mname}</h4>
									<small class="block"> <fmt:formatDate
											value="${re.rtime }" pattern="yyyy-MM-dd a HH:mm:ss" /></small>
									${re.rcontent }
								</div>
							</div>
						</c:forEach>
						<!-- AST : 페이지 넘기기 -->
						<div class="text-center">
							<ul class="pagination">

								<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
								<c:forEach var="ct" begin="1" end="${ct }">
									<li><a href="#">${ct }</a></li>
								</c:forEach>
								<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
							</ul>
						</div>
						<!-- / AST : 페이지 넘기기 -->

						<hr />

						<h4>댓글</h4>

						<!-- COMMENT FORM -->
						<form id="commentForm" class="form-horizontal" method="post"
							action="${path }/snsdetails/in.do">

							<div class="row">
								<!-- comment -->
								<div class="col-md-12">
									<textarea required class="form-control input-lg" id="rcontent"
										name="rcontent" rows="5" placeholder="Your Comment *"></textarea>
								</div>
								<br />

								<!-- code info -->
								<input type="hidden" name="mpk" value="${mpk }"> <input
									type="hidden" name="name" value="${name }"> <input
									type="hidden" name="spk" value="${contenlist[0].spk }">
								<!-- btn -->
								<div class="col-md-12">
									<p align="right">
										<button class="btn btn-primary">등록</button>
									</p>
									<p align="right">
										<c:if test="${mpk eq mmpk}">
											<button class="btn btn-primary" id="delete">수정</button>
											<button class="btn btn-primary" id="delete">글 삭제</button>
										</c:if>
									</p>
								</div>
							</div>

						</form>
						<!-- /COMMENT FORM -->
					</div>
					<!-- /COMMENTS -->
				</div>
			</div>
		</section>
	</div>
</div>
<!-- /WRAPPER -->

</html>