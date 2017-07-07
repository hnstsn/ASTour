<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
<!-- AST : bootstrap을 위한 것들을 모아놓은  jsp page -->
<%@ include file="../include/bootstap_collect.jsp"%>

</head>

<span id="header_shadow"></span>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">

		<!-- PAGE TITLE -->
		<header id="page-title">
			<!-- style="background-image:url('resources/assets/images/demo/parallax_bg.jpg')" -->
			<!--
               Enable only if bright background image used
               <span class="overlay"></span>
            -->

			<div class="container">
				<h1 class="hn" style="font-size: 35px">고객센터</h1>
				<!-- <ul class="breadcrumb">
                  <li><a href="index.html">Home</a></li>
                  <li><a href="#">Pages</a></li>
                  <li class="active">FAQ</li>
               </ul> -->
			</div>
		</header>
		
		<section class="container">
		
			<h2>
				<strong>자주 묻는 질문</strong>
			</h2>
			
			<!--   <p class="lead">그만 물어봐 </p> -->
			<div class="toogle toogle-accordion">
				<c:forEach var="faqList" items="${faqList}">
					<!-- 열린채로 보이게 하려면<div class="toggle active"> 아래로 수정-->
					<div class="toggle">
						<label>${faqList.alabel }</label>
						<div class="toggle-content">
							<p>${faqList.acontent}</p>
						</div>
					</div>
				</c:forEach>
			</div>


			<%-- <div class="container">
				<div class="panel-group" id="accordion">
					<c:forEach var="faqList" items="${faqList}">
    		<div class="panel panel-default">
      		<div class="panel-heading">
        		<h4 class="panel-title">
          		<a data-toggle="collapse" data-parent="#accordion" href="#collapse2">${faqList.alabel }</a>
        		</h4>
      		</div>
      		<div id="collapse2" class="panel-collapse collapse">
        		<div class="panel-body">${faqList.acontent}</div>
      		</div>
    		</div>
    		</c:forEach>
				</div>
			</div> --%>


			<div class="divider">
				divider <i class="fa fa-star"></i>
			</div>

			<!-- CALLOUT -->
			<div class="bs-callout text-center nomargin-bottom">
				<h3>
					<strong>다른 문의사항은 메일로 보내주세요! <br /> astour1865@gmail.com
					</strong>
				</h3>

				<!-- <div class="divider">
					divider
					<i class="fa fa-chevron-down"></i>

				</div>

				<h3>
					<Strong>또는</Strong></br> <Strong>관리자에게 메시지를 보내주세요!</Strong></br> <a
						style="margin-top: 10px" href="contact-us.html" target="_blank"
						class="btn btn-primary btn-lg">문의하기</a>

				</h3> -->
			</div>
			<div style="padding-bottom: 1.1%">
									</div>
			<!-- /CALLOUT -->

		</section>

	</div>
	<!-- /WRAPPER -->
</body>

</html>