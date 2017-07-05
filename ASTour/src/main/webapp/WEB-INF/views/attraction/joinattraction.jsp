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
<!--[if IE 8]>         <html class="ie ie8"> <![endif]-->
<!--[if IE 9]>         <html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->


<head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

.hn {font-family: 'Hanna';}
.jg { font-family: 'Jeju Gothic'; font-size: 30px;}
</style>
<meta charset="utf-8" />
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

<!-- mobile settings -->
<meta name="viewport"
	content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />

<%@ include file="../include/bootstap_collect.jsp"%>

<script type="text/javascript">

   //전체
   $(document).ready(function() {
      $("#loc_all").click(function() {
         location.href="${path}/chgPage.do?cpage=20";
      });
   });
   
   //검색
   $(document).ready(function() {
      $("#loc_change").click(function() {
         var loc = $("#loc_txt").val();
         if(loc!=""){
	         location.href="${path}/attraction/selectAttr.do?loc="+loc;
         }
         else{
        	 alert("입력하시오");
         }
      });
   });
   
   //명소 검색
   $(document).ready(function() {
      $("#loc_asort1").click(function() {
         location.href="${path}/attraction/selectAsort.do?loc=명소";
      });
   });
   //행사 검색
   $(document).ready(function() {
      $("#loc_asort2").click(function() {
         location.href="${path}/attraction/selectAsort.do?loc=행사";
      });
   });
   
</script>

</head>
<!-- WRAPPER -->
<div id="wrapper">

	<!-- PAGE TITLE -->
	<header id="page-title">
	<div class="container">
		<h1 class="hn" style="font-size: 35px">명소 & 행사</h1>
	</div>
	</header>
	<section id="portfolio" class="container">
	<ul class="nav nav-pills isotope-filter isotope-filter">
		<!-- data-option-value="*".culture .event class="active" 빼버림 -->
		<li><a id="loc_all" href="#">전체</a></li>
		<li><a id="loc_asort1" href="#">명소</a></li>
		<li><a id="loc_asort2" href="#">행사</a></li>
		<li><input style="visibility: hidden;" value="간격" type="submit"></li>
		<li><input class="form-control" id="loc_txt" type="text"></li>
		<li><a id="loc_change" class="btn-primary">검색</a></li>
	</ul>

<c:if test="${list.size()<=0}"><h1>검색결과 없습니다.</h1></c:if>
	<div class="row">
		<ul class="sort-destination isotope" data-sort-id="isotope-list">
			<!-- 수정 -->
			<c:forEach var="attraction" items="${list}">
				<li class="isotope-item col-md-3">
					<!-- item 1 -->
					<div class="item-box fixed-box">
						<figure> <img class="img-responsive"
							src="${path}/resources/image/culture/${attraction.aimage }"
							width="263" height="263" alt=""> </figure>
						<div class="item-box-desc">
							<h5 class="jg" style="font-size: 17px">${attraction.atitle }</h5>
							<small class="styleColor">${attraction.asort }</small>
							<p class="jg" style="font-size: 15px">${attraction.aintro }</p>
							<div class="text-center">
								<form
									action="${path}/attraction/initDetails.do?name=${attraction.atitle }">
									<input type="hidden" name="name" value="${attraction.atitle }">
									<input type="submit" class="btn btn-success" value="상세보기" />
								</form>
							</div>
						</div>
					</div>
				</li>
			</c:forEach>
			<!-- 수정끝 -->
		</ul>
	</div>
	<!-- /.masonry-container --> <!-- AST : 페이지 넘기기 -->
	<div class="text-center">
		<ul class="pagination">
			<c:if test="${pager.curBlock > 1 }">
				<li><a
					href="${path }/attraction/${controller}?curPage1=1&loc=${loc}"><i
						class="fa fa-angle-double-left"></i></a></li>
			</c:if>
			<c:if test="${pager.curBlock > 1 }">
				<li><a
					href="${path }/attraction/${controller}?curPage1=${pager.prevPage}&loc=${loc}"><i
						class="fa fa-chevron-left"></i></a></li>
			</c:if>
			<c:forEach var="num" begin="${pager.blockBegin }"
				end="${pager.blockEnd }">
				<c:if test="${num == pager.curPage }">
					<li><a style="background: GREEN;"
						href="${path }/attraction/${controller}?curPage1=${num}&loc=${loc}">${num }</a></li>
				</c:if>
				<c:if test="${num != pager.curPage }">
					<li><a
						href="${path }/attraction/${controller}?curPage1=${num}&loc=${loc}">${num }</a></li>
				</c:if>
			</c:forEach>
			<%-- <c:if test="${pager.curBlock <= pager.totBlock}"> --%>
			<c:if test="${pager.curPage <= pager.totPage }">
				<li><a
					href="${path }/attraction/${controller}?curPage1=${pager.nextPage}&loc=${loc}"><i
						class="fa fa-chevron-right"></i></a></li>
			</c:if>
			<c:if test="${pager.curPage <= pager.totPage }">
				<li><a
					href="${path }/attraction/${controller}?curPage1=${pager.totPage}&loc=${loc}"><i
						class="fa fa-angle-double-right"></i></a></li>
			</c:if>
		</ul>
	</div>
	<!-- / AST : 페이지 넘기기 --> </section>
</div>
<!-- /WRAPPER -->
</html>
