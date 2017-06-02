<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<%@ include file="../include/bootstap_collect.jsp"%>
<%@ include file="../include/sessionCheck.jsp"%>
<!-- Morenizr -->
<script type="text/javascript" src="assets/plugins/modernizr.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#schBtn").click(function() {
		var people_id = $("#people_id").val();
		if (people_id == '') {
			alert("이름을 입력해주세요");
			return false;
		} else {
			document.schForm.action="${path}/sns/snsPeople.do";
			document.schForm.submit();
		}
	});
});
</script>
</head>

<!-- AST : 블로그 전체 틀  -->
<div id="wrapper">

	<div id="blog">

		<!-- AST : 페이지 타이틀 -->
		<header id="page-title">
			<div class="container">
				<h1>${member.mname }블로그</h1>
			</div>
		</header>
		<!-- / AST : 페이지 타이틀 -->

		<!-- AST : 프로필 또는 그 외 전체 틀   -->
		<section class="container">
			<div class="row">
				<div class="col-md-3">

					<!-- AST : 사람찾기  -->
					<div class="widget" style="margin-right: 20px; ">

						<h3>사람 찾기</h3>

						<form method="post" name="schForm" class="input-group">
							<input type="text" class="form-control" name="people_id"
								id="people_id" placeholder="이름을 입력하세요" /> 
							<span class="input-group-btn">
							<button class="btn btn-success" id="schBtn">
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
								<img src="${path}/profile/${member.pfile}"
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
							<li>
								<a href="${path}/sns/snsSelect.do?mpk=${member.mpk}">
								<i class="fa fa-circle-o"></i>전체 보기</a>
							</li>
							<li>
								<a href="${path}/sns/reviewSelect.do?mpk=${member.mpk}&ssort=review">
								<i class="fa fa-circle-o"></i> 리뷰 게시물</a>
							</li>
							<li><a href="${path}/sns/reviewSelect.do?mpk=${member.mpk}&ssort=mybrd">
								<i class="fa fa-circle-o"></i> 나의 게시물</a>
							</li>
							<c:if test="${sessionScope.member.mpk eq member.mpk}">
								<li>
									<a href="${path}/sns/writeview.do?mpk=${sessionScope.member.mpk}">
										<i class="fa fa-circle-o"></i> 글쓰기
									</a>
								</li>
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
									<a href="${path}/snsdetails/contentview.do?spk=${sns.spk}&mname=${member.mname}">${sns.stitle}</a>
								</h2>
								<a href="blog.html" class="label label-default light">
									<i class="fa fa-dot-circle-o"></i>${sns.ssort}
								</a>
								<a href="blog-post.html#comments" class="scrollTo label label-default light">
									<i class="fa fa-comment-o"></i> 3 Comments</a>
								<span class="label label-default light">
									<fmt:formatDate value="${sns.sdate }" pattern="yyyy-MM-dd a HH:mm:ss" />
								</span>
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

					<c:if test="${list.size() > 0 }">
					<!-- AST : 페이지 넘기기 -->
					<div class="text-center">
						<ul class="pagination">
						<c:if test="${pager.curBlock > 1 }">
                      		  <a href = "${path }/sns/reviewSelect.do?mpk=${pager.mpk}&curPage1=1&ssort=${pager.ssort }"><i class="fa fa-angle-double-left"></i></a>
                      	</c:if>
						<c:if test="${pager.curBlock > 1 }">
							<li><a href="${path }/sns/reviewSelect.do?mpk=${pager.mpk}&curPage1=${pager.prevPage}&ssort=${pager.ssort }"><i class="fa fa-chevron-left"></i></a></li>
						</c:if>
							<c:forEach var="num" begin="${pager.blockBegin }" end="${pager.blockEnd }">
							<c:if test="${num == pager.curPage }">
							<li><a style="background: GREEN;" href="${path }/sns/reviewSelect.do?mpk=${pager.mpk}&curPage1=${num}&ssort=${pager.ssort } ">${num }</a></li>
							</c:if>
							<c:if test="${num != pager.curPage }">
							<li><a href="${path }/sns/reviewSelect.do?mpk=${pager.mpk}&curPage1=${num}&ssort=${pager.ssort } ">${num }</a></li>
							</c:if>
							</c:forEach>
						<c:if test="${pager.curBlock <= pager.totBlock}">
                           <li><a href="${path }/sns/reviewSelect.do?mpk=${pager.mpk}&curPage1=${pager.nextPage}&ssort=${pager.ssort }"><i class="fa fa-chevron-right"></i></a></li>
                        </c:if>
                        <c:if test="${pager.curPage <= pager.totPage }">
                           <li><a href = "${path }/sns/reviewSelect.do?mpk=${pager.mpk}&curPage1=${pager.totPage}&ssort=${pager.ssort }"><i class="fa fa-angle-double-right"></i></a></li>
                        </c:if>
						</ul>
					</div>
					<!-- / AST : 페이지 넘기기 -->
					</c:if>
					

				</div>
				<!-- / AST : 타임라인  -->
			</div>
		</section>
	</div>
</div>
<!-- / AST : 블로그 전체 틀 -->

</html>