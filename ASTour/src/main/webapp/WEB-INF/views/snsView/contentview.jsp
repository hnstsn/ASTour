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
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<%@ include file="../include/bootstap_collect.jsp"%>
<!-- Morenizr -->
<script type="text/javascript" src="assets/plugins/modernizr.min.js"></script>
</head>
<body>

	<!-- WRAPPER -->
	<div id="wrapper">

		<div id="blog">

			<!-- PAGE TITLE -->
			<header id="page-title">
				<div class="container">
					<h1>Atropos Blog</h1>

					<ul class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active">Blog</li>
					</ul>
				</div>
			</header>

			<section class="container">

				<div class="row">
					<div class="left col-md-9">

						<!-- article title -->
						<header class="blog-post">
							<h1>${title }</h1>
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
								<img src="assets/images/demo/screens/scr3.jpg"
									class="img-responsive" alt="img" />
							</div>
							<div class="item">
								<img src="assets/images/demo/screens/scr4.jpg"
									class="img-responsive" alt="img" />
							</div>
						</div>


						<!-- article content -->
						<article>
							<p class="dropcap">
								Aliquam fringilla, sapien eget scelerisque placerat, lorem
								libero cursus lorem, sed sodales lorem libero eu sapien. Nunc
								mattis feugiat justo vel faucibus. Nulla consequat feugiat
								malesuada. Ut justo nulla, <strong>facilisis vel
									molestie id</strong>, dictum ut arcu. Nunc ipsum nulla, eleifend non
								blandit quis, luctus quis orci. Cras blandit turpis mattis nulla
								ultrices interdum. Mauris pretium pretium dictum. Nunc commodo,
								felis sed dictum bibendum, risus justo iaculis dui, nec euismod
								orci sem eget neque. Donec in metus metus, vitae eleifend lorem.
								Ut vestibulum gravida venenatis. Vestibulum ante ipsum primis in
								faucibus orci luctus et ultrices posuere cubilia Curae;
								Pellentesque suscipit tincidunt magna non mollis. Fusce tempus
								tincidunt nisi, in luctus elit pellentesque quis. Sed velit mi,
								ullamcorper ut tempor ut, mattis eu lacus. Morbi rhoncus aliquet
								tellus, id accumsan enim sollicitudin vitae.
							</p>
							<p>
								Vivamus <a href="#">magna justo</a>, lacinia eget consectetur
								sed, convallis at tellus. Cras ultricies ligula sed magna dictum
								porta. Curabitur aliquet quam id dui posuere blandit. Sed
								porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus
								orci luctus et ultrices posuere cubilia Curae; Donec velit
								neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.
								Nulla porttitor accumsan tincidunt.
							</p>

							<!-- BLOCKQUOTE -->
							<blockquote>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Integer posuere erat a ante.</p>
								<cite>Source Title</cite>
							</blockquote>

							<p>Vivamus magna justo, lacinia eget consectetur sed,
								convallis at tellus.Quisque velit nisi, pretium ut lacinia in,
								elementum id enim. Sed porttitor lectus nibh. Vestibulum ac diam
								sit amet quam vehicula elementum sed sit amet dui. Donec rutrum
								congue leo eget malesuada. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Curabitur non nulla sit amet nisl
								tempus convallis quis ac lectus. Vivamus magna justo, lacinia
								eget consectetur sed, convallis at tellus. Pellentesque in ipsum
								id orci porta dapibus. Nulla quis lorem ut libero malesuada
								feugiat. Curabitur arcu erat, accumsan id imperdiet et,
								porttitor at sem.</p>
							<p>Proin eget tortor risus. Cras ultricies ligula sed magna
								dictum porta. Pellentesque in ipsum id orci porta dapibus. Lorem
								ipsum dolor sit amet, consectetur adipiscing elit. Nulla
								porttitor accumsan tincidunt. Lorem ipsum dolor sit amet,
								consectetur adipiscing elit.</p>
						</article>

						<hr />

						<!-- SOCIAL -->
						<p class="socials">
							<a href="#" class="rounded-icon social fa fa-facebook">
								<!-- facebook -->
							</a> <a href="#" class="rounded-icon social fa fa-twitter">
								<!-- twitter -->
							</a> <a href="#" class="rounded-icon social fa fa-google-plus">
								<!-- google plus -->
							</a> <a href="#" class="rounded-icon social fa fa-pinterest">
								<!-- pinterest -->
							</a> <a href="#" class="rounded-icon social fa fa-linkedin">
								<!-- linkedin -->
							</a>
						</p>

						<!-- TAGS -->
						<p class="fsize16">
							Tags: <a class="label label-default light" href="#"><i
								class="fa fa-tags"></i> Business</a> <a
								class="label label-default light" href="#"><i
								class="fa fa-tags"></i> Design</a> <a
								class="label label-default light" href="#"><i
								class="fa fa-tags"></i> Technology</a>
						</p>


						<div class="divider">
							<!-- divider -->
							<i class="fa fa-star"></i>
						</div>

						<!-- COMMENTS -->
						<div id="comments">
							<h2>3 Comments</h2>

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

									<!-- comment reply -->
									<div class="media">

										<!-- user-avatar -->
										<span class="user-avatar"> <img class="media-object"
											src="assets/images/avatar.png" width="64" height="64" alt="">
										</span>

										<div class="media-body">
											<h4 class="media-heading bold">Peter Doe</h4>
											<small class="block">June 29, 2014 - 11:23</small> Proin eget
											tortor risus. Cras ultricies ligula sed magna dictum porta.
											Pellentesque in ipsum id orci porta dapibus. Lorem ipsum
											dolor sit amet, consectetur adipiscing elit.
										</div>
									</div>

								</div>
							</div>

							<hr />

							<h4>
								Leave a reply <small class="block fsize13 font300">Your
									email address will not be published.</small>
							</h4>

							<!-- COMMENT FORM -->
							<form id="commentForm" class="form-horizontal" method="post"
								action="#">
								<div class="row">

									<!-- name -->
									<div class="col-md-4">
										<label>Name *</label> <input required
											class="form-control input-lg" type="text" name="author"
											id="author" value="" />
									</div>

									<!-- email -->
									<div class="col-md-4">
										<label>Email *</label> <input required
											class="form-control input-lg" type="text" name="email"
											id="email" value="" />
									</div>

									<!-- website -->
									<div class="col-md-4">
										<label>Website</label> <input class="form-control input-lg"
											type="text" name="url" id="url" value="" />
									</div>

								</div>

								<div class="row">

									<!-- comment -->
									<div class="col-md-12">
										<textarea required class="form-control input-lg" id="comment"
											name="comment" rows="5" placeholder="Your Comment *"></textarea>
									</div>
									<br />

									<!-- code info -->
									<div class="col-md-12 font300 fsize14">
										<p>Allowed HTML tags: &lt;a href=&quot;&quot;
											title=&quot;&quot;&gt; &lt;abbr title=&quot;&quot;&gt;
											&lt;acronym title=&quot;&quot;&gt; &lt;b&gt; &lt;blockquote
											cite=&quot;&quot;&gt; &lt;cite&gt; &lt;code&gt; &lt;del
											datetime=&quot;&quot;&gt; &lt;em&gt; &lt;i&gt; &lt;q
											cite=&quot;&quot;&gt; &lt;strike&gt; &lt;strong&gt;</p>
										<p>
											Inappropriate and irrelevant comments will be removed at an
											admin's discretion.<br /> Your email is used for
											verification purposes only, it will never be shared.
										</p>
									</div>

									<!-- btn -->
									<div class="col-md-12">
										<p>
											<button class="btn btn-primary">Post Comment</button>
										</p>
									</div>

									<!-- subscribe -->
									<div class="col-md-12 fsize16">
										<p>
											<input type="checkbox" name="subscribe_comments"
												id="subscribe_comments" value="subscribe" /> <label
												for="subscribe_comments">Notify me of follow-up
												comments by email.</label> <br /> <input type="checkbox"
												name="subscribe_blog" id="subscribe_blog" value="subscribe" />
											<label for="subscribe_blog">Notify me of new posts by
												email.</label>
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