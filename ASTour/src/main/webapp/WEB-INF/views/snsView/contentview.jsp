<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

.hn {
	font-family: 'Hanna';
	font-size: 40px;
}

.jg {
	font-family: 'Jeju Gothic';
	font-size: 30px;
}

.titletext {
   border: solid 1px #cccccc;
   background: -webkit-linear-gradient(white, #ececec);
   /* For Safari 5.1 to 6.0 */
   background: -o-linear-gradient(white, #ececec);
   /* For Opera 11.1 to 12.0 */
   background: -moz-linear-gradient(white, #ececec);
   /* For Firefox 3.6 to 15 */
   background: linear-gradient(white, #ececec); /* Standard syntax */
   padding: 7px 10px 7px 10px;
   font-family: Tahoma, 돋움체;
   font-size: 11pt;
   line-height: 100%;
   color: #000000;
   border-radius: 10px;
   float: left;
}
</style>
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
<script>
	// AST(CSW) - 게시글 수정 삭제만
	$(document).ready(function() {
		// 게시글의 수정버튼을 누르면 수정 페이지로 이동
		$("#upCon").click(function() {
			document.conForm.action = "${path}/snsdetails/updateView.do";
			document.conForm.submit();
		});

		// 게시글의 삭제버튼을 눌렀으면
		$("#deCon").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				document.conForm.action = "${path}/snsdetails/deContent.do";
				document.conForm.submit();
			}
		});
	});


	// 좋아요 클릭
	function chkLike(mpk, spk) {
		$.ajax({
			type : "post",
			url : "${path}/snsdetails/likeinsert.do",
			data : "mpk=" + mpk + "&spk=" + spk,
			success : function(data) {
				$("#likeDiv").html("<div class='titletext' style='width: 100px;' align='center' onclick='canLike(${sessionScope.member.mpk}, ${contenlist.spk})'>"
						+"<span class='jg' style='font-size: 120%'>좋아요</span> <i class='fa fa-heart' style='font-size: 110%'></i></div>");
			}
		});
	}
	// 좋아요 해제
	function canLike(mpk, spk) {
		$.ajax({
			type : "post",
			url : "${path}/snsdetails/likeDelete.do",
			data : "mpk=" + mpk + "&spk=" + spk,
			success : function(data) {
				$("#likeDiv").html("<div class='titletext' style='width: 100px;'align='center' onclick='chkLike(${sessionScope.member.mpk}, ${contenlist.spk})'>"
						+"<span class='jg' style='font-size: 120%'>좋아요</span> <i class='fa fa-heart-o' style='font-size: 110%''></i></div>");
			}
		});
	}

	//댓글 삭제
	function f1(rpk, spk) {
		if (confirm("삭제하시겠습니까?")) {
			location.href = "${path}/snsdetails/delete.do?rpk=" + rpk + "&spk=" + spk;
		}
	}

	//댓글 수정
	function f2(rpk, spk, mpk) {
		window.open("${path}/snsdetails/up.do?rpk=" + rpk + "&spk=" + spk + "&mpk=" + mpk, "댓글", "width=800, height=500");
	}

	</script>
</head>
<!-- WRAPPER -->
<div id="wrapper">

	<div id="blog">

		<!-- PAGE TITLE -->
		<header id="page-title">
			<div class="container">
				<!-- 이름 디비에서 불러와서 처리하기 -->
				<h1 class="hn">${mname}블로그</h1>
			</div>
		</header>

		<section class="container">

			<div class="row">
				<div class="left col-md-12">
					<!-- 해당 게시물 수정, 삭제  - CSW -->
					<form method="post" name="conForm">
						<!-- article title -->
						<header class="blog-post">
							<h1 class="jg" style="font-size: 35px">
								<input type="hidden" name="stitle" value="${contenlist.stitle}" />${contenlist.stitle}</h1><span><a>가이드보기</a></span>
							
						</header>

						<!-- carousel -->
						<div class="owl-carousel text-center controlls-over"
							data-plugin-options='{"items": 1, "singleItem": true, "navigation": true, "pagination": true, "autoPlay": true, "transitionStyle":"fadeUp"}'>
							<!-- transitionStyle: fade, backSlide, goDown, fadeUp,  -->
							<c:forEach var="file" items="${fileList}">
								<div class="item">
									<img src="${path}/sns/${file.sffile}" class="img-rounded"
										width="1100" height="400" alt="img" />
								</div>
							</c:forEach>
						</div>
						
						<div id="likeDiv" align="right" >
							<c:choose>
								<c:when test="${likeChk == 'yes'}">
									<div class="titletext" style="width: 100px;" align="center"
										onclick="canLike(${sessionScope.member.mpk}, ${contenlist.spk})">
										<span class="jg" style="font-size: 120%">좋아요</span>
										<i class="fa fa-heart" style="font-size: 110%"></i>
									</div>
								</c:when>
								<c:otherwise>
									<div class="titletext" style="width: 100px;" align="center" 
										onclick="chkLike(${sessionScope.member.mpk}, ${contenlist.spk})">
										<span class="jg" style="font-size: 120%">좋아요</span>
										<i class="fa fa-heart-o" style="font-size: 110%"></i>
									</div>
								</c:otherwise>
							</c:choose>
							</div>
						
						
							<div class="titletext" style="width: 110px" align="center">
							<span class="jg" style="font-size: 120%">조회수 : ${contenlist.shits}</span>
							</div>
							<div class="titletext" style="width: 240px" align="center">
							<span class="jg" style="font-size: 120%"><fmt:formatDate value="${contenlist.sdate}" pattern="yyyy-MM-dd a HH:mm:ss" /></span>
							</div>
						

						<!-- article content -->
						<div>
						<br/><br/>
						<article style="margin-top: 3%; clear:both">
						<input type="hidden" name="scontent" value="${contenlist.scontent}" />
							<h4 class="jg" style="font-size: 20px; text-align: left">
								${contenlist.scontent}</h4>
						</article>
						</div>
						<p align="right">
							<c:if test="${sessionScope.member.mpk eq contenlist.mpk}">
								<button class="btn btn-primary" id="upCon">수정</button>
								<button class="btn btn-primary" id="deCon">글 삭제</button>
								<input type="hidden" name="mpk"
									value="${sessionScope.member.mpk}" />
								<input type="hidden" name="spk" value="${contenlist.spk}" />
							</c:if>
						</p>
					</form>
					<!-- 해당 게시물 수정, 삭제 끝 - CSW -->
					<hr />
					<!-- AST(CSW) : 댓글이 없으면 보여주지 않는다 -->
					<c:if test="${replyView.size() >0}">

						<div class="divider">
							<!-- divider -->
							<i class="fa fa-star"></i>
						</div>

						<!-- COMMENTS -->
						<div id="comments">
							<h2 class="jg" style="font-size: 20px">댓글</h2>

							<c:forEach var="re" items="${replyView }">
								<div class="comment">
									<!-- user-avatar -->
									<span class="user-avatar"> <img
										class="pull-left media-object img-circle"
										src="${path}/profile/${re.pfile}" width="64" height="64" 
										alt="">
									</span>

									<div>
										<c:if test="${sessionScope.member.mpk eq re.mpk}">
											<a class="scrollTo replyBtn"
												onclick="f1(${re.rpk},${re.spk})">삭제</a>
											<a class="scrollTo replyBtn" style="margin-right: 1%;"
												onclick="f2(${re.rpk},${re.spk},${re.mpk})">수정</a>
										</c:if>
										<h4 class="media-heading bold"><a href="${path }/sns/initSns.do?mpk=${re.mpk}">
										${re.mname}</a></h4> <small
											class="block"> <fmt:formatDate value="${re.rtime }"
												pattern="yyyy-MM-dd a HH:mm:ss" />
										</small>
										<h5 class="jg" style="font-size: 20px">${re.rcontent }</h5>
									</div>
								</div>
							</c:forEach>
							<!-- AST : 페이지 넘기기 -->
							<div class="text-center">
								<ul class="pagination">
									<c:if test="${pager.curBlock > 1}">
										<li><a
											href="${path}/snsdetails/contentview.do?spk=${pager.spk}&curPage1=${pager.prevPage}"><i
												class="fa fa-chevron-left"></i></a></li>
									</c:if>
									<c:forEach var="num" begin="${pager.blockBegin}"
										end="${pager.blockEnd}">
										<c:if test="${num == pager.curPage }">
											<li><a style="background: GREEN;"
												href="${path}/snsdetails/contentview.do?spk=${pager.spk}&curPage1=${num}">${num }</a></li>
										</c:if>
										<c:if test="${num != pager.curPage }">
											<li><a
												href="${path}/snsdetails/contentview.do?spk=${pager.spk}&curPage1=${num}">${num }</a></li>
										</c:if>
									</c:forEach>
									<c:if test="${pager.curBlock <= pager.totBlock}">
										<li><a
											href="${path}/snsdetails/contentview.do?spk=${pager.spk}&curPage1=${pager.nextPage}"><i
												class="fa fa-chevron-right"></i></a></li>
									</c:if>
								</ul>
							</div>
							<!-- / AST : 페이지 넘기기 -->
							<hr />
					</c:if>

					<h4 class="jg" style="font-size: 20px">댓글</h4>

					<!-- COMMENT FORM -->
					<form id="commentForm" action="${path}/snsdetails/in.do"
						method="post">
						<div class="row">
							<!-- comment -->
							<div class="col-md-12">
								<textarea required class="form-control input-lg" id="rcontent"
									name="rcontent" rows="5" placeholder="댓글을 남겨주세요"></textarea>
							</div>
							<br />
							<!-- btn -->
							<div class="col-md-12">
								<p align="right">
									<button class="btn btn-primary">등록</button>
									<input type="hidden" name="spk" value="${contenlist.spk }">
									<input type="hidden" name="mpk"
										value="${sessionScope.member.mpk}" />
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