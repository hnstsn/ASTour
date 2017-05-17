<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->


	<head>
		<meta charset="utf-8" />
		<title>Atropos - Responsive Multipurpose</title>
		<meta name="keywords" content="HTML5,CSS3,Template" />
		<meta name="description" content="" />
		<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

		<!-- mobile settings -->
		<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
		
		<%@ include file="../include/bootstap_collect.jsp" %>
		<script type="text/javascript">

		$(document).ready(function() {
				$("#search_loc").click(function() {
					var loc = $("#loc_txt").val();
					alert(loc);
					$.ajax({
						url : "test111", //접근해야할 아이디 
						type : "post", //전송방식
						dataType : "json", //json타입으로 요청
						success : function(Data) {  //날라온 데이터를 받아줌
							
						}
					});
				});
			});
			
		</script>
	</head>
	<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="assets/images/boxed_background/1.jpg"  -->
		<%@ include file="../include/menu.jsp" %>
		
		<!-- WRAPPER -->
		<div id="wrapper" style="margin-left: 10%;margin-right: 10%">

			<!-- PAGE TITLE -->
			<header id="page-title">
				<div class="container">
					<h1>추천장소 & 행사</h1>

					<ul class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active">추천장소 & 행사</li>
					</ul>
				</div>
			</header>
				<h2>추천장소 & 행사</h2>
				<ul class="nav nav-pills isotope-filter isotope-filter" data-sort-id="isotope-list" data-option-key="filter">
					<li data-option-value="*" class="active"><a href="#">전체</a></li>
					<li data-option-value=".culture"><a href="#">추천장소</a></li>
					<li data-option-value=".event"><a href="#">행사</a></li>
					<li><input class="form-control" id="loc_txt" type="text"></li>
					<li data-option-value="" ><a href="#" id="search_loc">검색</a></li>
				</ul>

				<div class="row">
					<ul class="sort-destination isotope" data-sort-id="isotope-list" id="test11111">
					
					<!-- 수정 -->
					<li class="isotope-item col-md-3 culture event"><!-- item 1 -->
							<div class="item-box fixed-box">
								<figure>
									<img class="img-responsive" src="image/culture/${mem.sname1 }" width="263" height="263" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>${mem.sname1 }</h4>
									<small class="styleColor">${mem.sname1 }</small>
									<p>${mem.sname1 }</p>
									<div class="text-center">
			  						<button type="button" class="btn btn-success">상세보기</button>
									</div>
								</div>
							</div>
						</li>
						<!-- 수정끝 -->
						
						<li class="isotope-item col-md-3 culture event"><!-- item 1 -->
							<div class="item-box fixed-box">
								<figure>
									<img class="img-responsive" src="image/culture/9.jpg" width="263" height="263" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>덕수궁</h4>
									<small class="styleColor">문화</small>
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
									<div class="text-center">
			  						<button type="button" class="btn btn-success">상세보기</button>
									</div>
								</div>
							</div>
						</li>
			
						<li class="isotope-item col-md-3 culture"><!-- item 2 -->
							<div class="item-box fixed-box">
								<figure>
									<img class="img-responsive" src="image/culture/2.jpg" width="263" height="263" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>독립문</h4>
									<small class="styleColor">문화</small>
									<p>This is a short text - the content remains the same!</p>
									<div class="text-center">
										<button type="button" class="btn btn-success">상세보기</button>
									</div>
								</div>
							</div>
						</li>
			
						<li class="isotope-item col-md-3 culture"><!-- item 4 -->
							<div class="item-box fixed-box">
								<figure>
									<img class="img-responsive" src="image/culture/3.jpg" width="263" height="263" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>숭례문</h4>
									<small class="styleColor">문화</small>
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
									<div class="text-center">
										<button type="button" class="btn btn-success">상세보기</button>
									</div>
								</div>
							</div>
						</li>
			
						<li class="isotope-item col-md-3 event"><!-- item 5 -->
							<div class="item-box fixed-box">
								<figure>
									<img class="img-responsive" src="image/culture/4.jpg" width="263" height="263" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>행사</h4>
									<small class="styleColor">행사</small>
									<p>장소</p>
									<div class="text-center">
										<button type="button" class="btn btn-success">상세보기</button>
									</div>
								</div>
							</div>
						</li>
			
						<li class="isotope-item col-md-3 event"><!-- item 6 -->
							<div class="item-box fixed-box">
								<figure>
									<img class="img-responsive" src="image/culture/5.jpg" width="263" height="263" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>John Doe</h4>
									<small class="styleColor">행사</small>
									<p>This is a short text - the content remains the same!</p>
									<div class="text-center">
										<button type="button" class="btn btn-success">상세보기</button>
									</div>
								</div>
							</div>
						</li>
			
						<li class="isotope-item col-md-3 event"><!-- item 7 -->
							<div class="item-box fixed-box">
								<figure>
									<img class="img-responsive" src="image/culture/6.jpg" width="263" height="263" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>John Doe</h4>
									<small class="styleColor">행사</small>
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
									<div class="text-center">
										<button type="button" class="btn btn-success">상세보기</button>
									</div>
								</div>
							</div>
						</li>
			
						<li class="isotope-item col-md-3 event"><!-- item 8 -->
							<div class="item-box fixed-box">
								<figure>
									<img class="img-responsive" src="image/culture/7.jpg" width="263" height="263" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>John Doe</h4>
									<small class="styleColor">행사</small>
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
									<div class="text-center">
										<button type="button" class="btn btn-success">상세보기</button>
									</div>
								</div>
							</div>
						</li>
						<li class="isotope-item col-md-3 event"><!-- item 8 -->
							<div class="item-box fixed-box">
								<figure>
									<img class="img-responsive" src="image/culture/8.jpg" width="263" height="263" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>John Doe</h4>
									<small class="styleColor">행사</small>
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
									<div class="text-center">
										<button type="button" class="btn btn-success">상세보기</button>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div><!-- /.masonry-container -->
		</div>
		<!-- /WRAPPER -->



		<!-- FOOTER -->
		<footer>

			<!-- copyright , scrollTo Top -->
			<div class="footer-bar">
				<div class="container">
					<span class="copyright">Copyright &copy; Your Company, LLC . All Rights Reserved.</span>
					<a class="toTop" href="#topNav">BACK TO TOP <i class="fa fa-arrow-circle-up"></i></a>
				</div>
			</div>
			<!-- copyright , scrollTo Top -->
		</footer>
		<!-- /FOOTER -->


	</body>
</html>

</body>
</html>
