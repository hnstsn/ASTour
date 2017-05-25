<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	$(document).ready(function() {
		$("#delete").click(function() {
			alert("정말로 삭제하시겠습니까?");
	         location.href="${path}/sns/delete.do?spk=${list[0].spk }"

		});
	});
</script>
</head>
<body>
	<!-- WRAPPER -->
	<div id="wrapper">

		<div id="blog">

			<!-- PAGE TITLE -->
			<header id="page-title">
				<div class="container">
					<h1>황성빈님의 블로그</h1>
				</div>
			</header>

			<section class="container">

				<div class="row">
					<div class="left col-md-12">

						<!-- article title -->
						<header class="blog-post">
							<h1>${list[0].stitle }</h1>
							<small class="fsize13"> <a href="blog.html"
								class="label label-default light"><i
									class="fa fa-dot-circle-o"></i> Business</a> <a href="#comments"
								class="scrollTo label label-default light"><i
									class="fa fa-comment-o"></i> 3 Comments</a> <span
								class="label label-default light">June 29, 2014</span>
							</small>
						</header>

						<!-- carousel -->
						<div class="owl-carousel text-center controlls-over"
							data-plugin-options='{"items": 1, "singleItem": true, "navigation": true, "pagination": true, "autoPlay": true, "transitionStyle":"fadeUp"}'>
							<!-- transitionStyle: fade, backSlide, goDown, fadeUp,  -->
							<div class="item">
								<img src="${path }/${list[0].spath}${list[0].sfile}"
									class="img-rounded" width="1200" height="600" alt="img" />
							</div>
							<div class="item">
								<img src="assets/images/demo/screens/scr4.jpg"
									class="img-responsive" alt="img" />
							</div>
						</div>


						<!-- article content -->
						<article>
							<p class="dropcap">${list[0].scontent }</p>
						</article>
						<hr />

						<div class="divider">
							<!-- divider -->
							<i class="fa fa-star"></i>
						</div>

						<!-- COMMENTS -->
						<div id="comments">
							<h2>3 댓글</h2>

							<!-- comment item -->
							<div class="comment">

								<!-- user-avatar -->
								<span class="user-avatar"> <img
									class="pull-left media-object" src="assets/images/avatar.png"
									width="64" height="64" alt="">
								</span>

								<div class="media-body">
									<a href="#commentForm" class="scrollTo replyBtn">reply</a>
									<h4 class="media-heading bold">John Doe</h4>
									<small class="block">June 29, 2014 - 11:23</small> Proin eget
									tortor risus. Cras ultricies ligula sed magna dictum porta.
									Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor
									sit amet, consectetur adipiscing elit.
								</div>
							</div>

							<!-- comment item -->
							<div class="comment">

								<!-- user-avatar -->
								<span class="user-avatar"> <img
									class="pull-left media-object" src="assets/images/avatar.png"
									width="64" height="64" alt="">
								</span>

								<div class="media-body">
									<a href="#commentForm" class="scrollTo replyBtn">reply</a>
									<h4 class="media-heading bold">Diana Doe</h4>
									<small class="block">June 29, 2014 - 11:23</small> Proin eget
									tortor risus. Cras ultricies ligula sed magna dictum porta.
									Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor
									sit amet, consectetur adipiscing elit.
								</div>
							</div>

							<!-- comment item -->
							<div class="comment">

								<!-- user-avatar -->
								<span class="user-avatar"> <img class="media-object"
									src="assets/images/avatar.png" width="64" height="64" alt="">
								</span>

								<div class="media-body">
									<a href="#commentForm" class="scrollTo replyBtn">reply</a>
									<h4 class="media-heading bold">Melissa Doe</h4>
									<small class="block">June 29, 2014 - 11:23</small> Proin eget
									tortor risus. Cras ultricies ligula sed magna dictum porta.
									Pellentesque in ipsum id orci porta dapibus. Lorem ipsum dolor
									sit amet, consectetur adipiscing elit.

								</div>
							</div>

							<hr />

							<h4>
								댓글
							</h4>

							<!-- COMMENT FORM -->
							<form id="commentForm" class="form-horizontal" method="post"
								action="#">
								<!-- <div class="row">

									name
									<div class="col-md-4">
										<label>Name *</label> <input required
											class="form-control input-lg" type="text" name="author"
											id="author" value="" />
									</div>

									email
									<div class="col-md-4">
										<label>Email *</label> <input required
											class="form-control input-lg" type="text" name="email"
											id="email" value="" />
									</div>

									website
									<div class="col-md-4">
										<label>Website</label> <input class="form-control input-lg"
											type="text" name="url" id="url" value="" />
									</div>

								</div> -->

								<div class="row">

									<!-- comment -->
									<div class="col-md-12">
										<textarea required class="form-control input-lg" id="comment"
											name="comment" rows="5" placeholder="Your Comment *"></textarea>
									</div>
									<br />

									<!-- code info -->

									<!-- btn -->
									<div class="col-md-12">
										<p>
											<button class="btn btn-primary">Post Comment</button>
										</p>
									</div>
								</div>
							</form>
							<!-- /COMMENT FORM -->
							<div align="right">
								<button class="btn btn-primary" id="delete">글 삭제</button>
							</div>
						</div>
						<!-- /COMMENTS -->
					</div>
				</div>
			</section>
		</div>
	</div>
	<!-- /WRAPPER -->



	<!-- FOOTER -->
	<footer>

		<!-- copyright , scrollTo Top -->
		<div class="footer-bar">
			<div class="container">
				<span class="copyright">Copyright &copy; Your Company, LLC .
					All Rights Reserved.</span> <a class="toTop" href="#topNav">BACK TO
					TOP <i class="fa fa-arrow-circle-up"></i>
				</a>
			</div>
		</div>
		<!-- copyright , scrollTo Top -->

	</footer>
	<!-- /FOOTER -->

</body>
</html>