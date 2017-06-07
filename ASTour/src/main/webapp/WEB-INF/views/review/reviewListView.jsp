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
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

<!-- mobile settings -->
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />

<%@ include file="../include/bootstap_collect.jsp"%>

</head>
<body>

	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- PAGE TITLE -->
		<header id="page-title">
		<div class="container" style="margin-left: 20%; margin-right: 20%">
			<h1>${title }리뷰목록</h1>
		</div>
		</header>
		<c:choose>
			<c:when test="${list.size() < 1}">
				<div class="row" style="margin-left: 20%; margin-right: 20%">
					<h2>${title} 리뷰가 없습니다</h2>
				</div>
			</c:when>
			<c:otherwise>
				<ul class="nav nav-pills isotope-filter isotope-filter"
					style="margin-left: 20%; margin-right: 20%">
					<!-- data-option-value="*".culture .event class="active" 빼버림 -->
					<li><a
						href="${path }/reViewList.do?review_ATITLE=${title}&review_AIMAGE=${image}">최신순</a></li>
					<li><a
						href="${path }/hitslist.do?review_ATITLE=${title}&review_AIMAGE=${image}">조회순</a></li>
				</ul>

				<div class="row" style="margin-left: 20%; margin-right: 20%">
					<ul class="sort-destination isotope" data-sort-id="isotope-list">
						<!-- 수정 -->
						<%-- <c:forEach var="attraction" items="${list}"> --%>
						<c:forEach var="list" items="${list}">
							<li class="isotope-item col-sm-6 col-md-4 design">
								<!-- item 3 -->
								<div class="item-box">
									<figure> <a class="item-hover"
										href="${path }/snsdetails/contentview.do?spk=${list.spk }">
										<span class="overlay color2"></span> <span class="inner">
											<span class="block fa fa-plus fsize20"></span> <strong>제목:</strong>${list.stitle }
									</span>
									</a> <img class="img-responsive"
										src="${path}/sns/${list.filename }" width="260" height="260"
										alt=""> </figure>
									<div class="item-box-desc">
										<h4>${list.mname }(${list.ct })</h4>
										<span>조회수 :${list.shits}</span> <small class="styleColor">${list.mid }</small>
									</div>
								</div>
							</li>
						</c:forEach>
						<%-- </c:forEach> --%>
						<!-- 수정끝 -->
					</ul>
				</div>
				<!-- /.masonry-container -->
				<!-- AST : 페이지 넘기기 -->
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pager.curBlock > 1 }">
							<li><a
								href="${path }/${controller}?review_ATITLE=${title}&review_AIMAGE=${image}&curPage1=1"><i
									class="fa fa-angle-double-left"></i></a></li>
						</c:if>
						<c:if test="${pager.curBlock > 1 }">
							<li><a
								href="${path }/${controller}?review_ATITLE=${title}&review_AIMAGE=${image}&curPage1=${pager.prevPage}"><i
									class="fa fa-chevron-left"></i></a></li>
						</c:if>
						<c:forEach var="num" begin="${pager.blockBegin }"
							end="${pager.blockEnd }">
							<c:if test="${num == pager.curPage }">
								<li><a style="background: GREEN;"
									href="${path }/${controller}?review_ATITLE=${title}&review_AIMAGE=${image}&curPage1=${num} ">${num }</a></li>
							</c:if>
							<c:if test="${num != pager.curPage }">
								<li><a
									href="${path }/${controller}?review_ATITLE=${title}&review_AIMAGE=${image}&curPage1=${num}">${num }</a></li>
							</c:if>
						</c:forEach>
						<c:if test="${pager.curPage <= pager.totPage }">
							<li><a
								href="${path }/${controller}?review_ATITLE=${title}&review_AIMAGE=${image}&curPage1=${pager.nextPage}"><i
									class="fa fa-chevron-right"></i></a></li>
						</c:if>
						<c:if test="${pager.curPage <= pager.totPage }">
							<li><a
								href="${path }/${controller}?review_ATITLE=${title}&review_AIMAGE=${image}&curPage1=${pager.totPage}"><i
									class="fa fa-angle-double-right"></i></a></li>
						</c:if>
					</ul>
				</div>
				<!-- / AST : 페이지 넘기기 -->
			</c:otherwise>
		</c:choose>
	</div>
	<!-- /WRAPPER -->

</body>
</html>

