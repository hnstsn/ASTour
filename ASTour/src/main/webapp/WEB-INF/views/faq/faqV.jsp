<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
	<head>
		<meta charset="utf-8" />
		<title>Atropos - Responsive Multipurpose</title>
		<meta name="keywords" content="HTML5,CSS3,Template" />
		<meta name="description" content="" />
		<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

		<!-- mobile settings -->why
		<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />

		<!-- AST : bootstrap을 위한 것들을 모아놓은  jsp page -->
		<%@ include file="../include/bootstap_collect.jsp" %>
		
	</head>
	<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="resources/assets/images/boxed_background/1.jpg"  -->

	<!-- AST : menu부분을 위한 jsp page -->
	<%@ include file="../include/menu.jsp" %>
	
	<span id="header_shadow"></span>
	
		<!-- WRAPPER -->
		<div id="wrapper">

			<!-- PAGE TITLE -->
			<header id="page-title"> <!-- style="background-image:url('resources/assets/images/demo/parallax_bg.jpg')" -->
				<!--
					Enable only if bright background image used
					<span class="overlay"></span>
				-->

				<div class="container">
					<h1>FAQ</h1>

					<ul class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<!-- <li><a href="#">Pages</a></li> -->
						<li class="active">FAQ</li>
					</ul>
				</div>
			</header>

			<section class="container">

				<h2><strong>자</strong>주 <strong>묻</strong>는 <strong>질</strong>문</h2>

				<p class="lead">그만 물어봐.</p>

				<div class="divider"><!-- divider -->
					<i class="fa fa-star"></i>
				</div>

				<div class="toogle toogle-accordion">

					<!-- <div class="toggle active"> 아래로 수정-->
					<div class="toggle">
						<label>이 사이트는 뭐하는덴가요?</label>
						<div class="toggle-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet.</p>
							<a class="img-thumbnail lightbox pull-left inner" href="resources/assets/images/demo/test_2.jpg" data-plugin-options='{"type":"image"}'>
								<img src="resources/assets/images/demo/test_2_small.jpg" height="110" alt="" />
							</a>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet.</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet.</p>

							<div class="divider styleColor white"><!-- divider -->
								<i class="fa fa-leaf"></i>
							</div>

							<!-- columns -->
							<div class="row">
								<div class="col-md-4"><!-- left -->
									<h3>Alien Features</h3>
									<p class="justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet.</p>
								</div>
								<div class="col-md-4"><!-- center - video -->
									<iframe class="fitvids" src="http://player.vimeo.com/video/23630702" width="800" height="450"></iframe>
								</div>
								<div class="col-md-4"><!-- right -->
									<h3>Human Features</h3>
									<p class="justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet.</p>
								</div>
							</div>

							<p class="lead padding30 text-center">Yes, Atropos can be customized very easy in many ways.</p>
						</div>
					</div>

					<div class="toggle">
						<label>Lorem ipsum dolor sit amet, consectetur adipiscing elit?</label>
						<div class="toggle-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
							<ul class="list-icon check StyleSecondColor">
								<li>Nullam id dolor id</li>
								<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
								<li>Maecenas sed diam eget</li>
								<li>Curabitur pellentesque neque eget diam posuere porta.</li>
							</ul>
						</div>
					</div>

					<div class="toggle">
						<label>Curabitur pellentesque neque eget diam?</label>
						<div class="toggle-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
							<ul class="list-icon check StyleSecondColor">
								<li>Nullam id dolor id</li>
								<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
								<li>Maecenas sed diam eget</li>
								<li>Curabitur pellentesque neque eget diam posuere porta.</li>
							</ul>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
						</div>
					</div>

					<div class="toggle">
						<label>Quisque ut nulla at nunc vehicula lacinia?</label>
						<div class="toggle-content">
							<ul class="list-icon check StyleSecondColor">
								<li>Nullam id dolor id</li>
								<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
								<li>Maecenas sed diam eget</li>
							</ul>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
						</div>
					</div>

					<div class="toggle">
						<label>Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet?</label>
						<div class="toggle-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
							<ul class="list-icon check StyleSecondColor">
								<li>Nullam id dolor id</li>
								<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
								<li>Maecenas sed diam eget</li>
							</ul>
						</div>
					</div>

					<div class="toggle">
						<label>Proin adipiscing porta tellus?</label>
						<div class="toggle-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
						</div>
					</div>

					<div class="toggle">
						<label>Feugiat nibh adipiscing sit amet?</label>
						<div class="toggle-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur <a data-toggle="tooltip" data-original-title="Default tooltip" href="#">pellentesque neque eget</a> diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. <a href="#" data-container="body" data-toggle="popover" data-placement="top" data-content="And here's some amazing content. It's very engaging. right?" data-original-title="A Title" title="A Title">Popover on top</a></p>
							<ul class="list-icon check StyleSecondColor">
								<li>Nullam id dolor id</li>
								<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
								<li>Maecenas sed diam eget</li>
							</ul>
						</div>
					</div>
				</div>

				<!-- CALLOUT -->
				<div class="bs-callout text-center nomargin-bottom">
					<h3>
						<strong>Not Here</strong> what you are looking for? 메일로 보내주세요 <br/> <strong> jjydmz@naver.com</strong>
					</h3>

					<div class="divider"><!-- divider -->
						<i class="fa fa-chevron-down"></i>
					</div>

					<h3>
						<a href="contact-us.html" target="_blank" class="btn btn-primary btn-lg">Contact Us!</a>
					</h3>
				</div>
				<!-- /CALLOUT -->

			</section>

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


			<!-- footer content -->
			<div class="footer-content">
				<div class="container">

					<div class="row">


						<!-- FOOTER CONTACT INFO -->
						<div class="column col-md-4">
							<h3>CONTACT</h3>

							<p class="contact-desc">
								Atropos is a very powerful HTML5 template, you will be able to create an awesome website in a very simple way.										
							</p>
							<address class="font-opensans">
								<ul>
									<li class="footer-sprite address">
										PO Box 21132<br />
										Here Weare St, Melbourne<br />
										Vivas 2355 Australia<br />
									</li>
									<li class="footer-sprite phone">
										Phone: 1-800-565-2390
									</li>
									<li class="footer-sprite email">
										<a href="mailto:support@yourname.com">support@yourname.com</a>
									</li>
								</ul>
							</address>

						</div>
						<!-- /FOOTER CONTACT INFO -->


						<!-- FOOTER LOGO -->
						<div class="column logo col-md-4 text-center">
							<div class="logo-content">
								<img class="animate_fade_in" src="resources/assets/images/logo_footer.png" width="200" alt="" />
								<h4>ATROPOS TEMPLATE</h4>
							</div>											
						</div>
						<!-- /FOOTER LOGO -->


						<!-- FOOTER LATEST POSTS -->
						<div class="column col-md-4 text-right">
							<h3>RECENT POSTS</h3>

							<div class="post-item">
								<small>JANUARY 2, 2014 BY ADMIN</small>
								<h3><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></h3>
							</div>
							<div class="post-item">
								<small>JANUARY 2, 2014 BY ADMIN</small>
								<h3><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></h3>
							</div>
							<div class="post-item">
								<small>JANUARY 2, 2014 BY ADMIN</small>
								<h3><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></h3>
							</div>

							<a href="blog-masonry-sidebar.html" class="view-more pull-right">View Blog <i class="fa fa-arrow-right"></i></a>

						</div>
						<!-- /FOOTER LATEST POSTS -->

					</div>

				</div>
			</div>
			<!-- footer content -->

		</footer>
		<!-- /FOOTER -->


		<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information. -->
		<!--<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', 'UA-XXXXX-X', 'domainname.com');
			ga('send', 'pageview');
		</script>
		-->

	</body>
</html>