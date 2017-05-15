<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
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

		<!-- mobile settings -->
		<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />

		<!-- WEB FONTS -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800" rel="stylesheet" type="text/css" />

		<!-- CORE CSS -->
		<link href="${path}/resources/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/css/font-awesome.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/plugins/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/plugins/owl-carousel/owl.theme.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/plugins/owl-carousel/owl.transitions.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/plugins/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/css/animate.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/css/superslides.css" rel="stylesheet" type="text/css" />

		<!-- THEME CSS -->
		<link href="${path}/resources/assets/css/essentials.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/css/layout.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/css/layout-responsive.css" rel="stylesheet" type="text/css" />
		<link href="${path}/resources/assets/css/color_scheme/orange.css" rel="stylesheet" type="text/css" /><!-- orange: default style -->
		<!--<link id="css_dark_skin" href="${path}/resources/assets/css/layout-dark.css" rel="stylesheet" type="text/css" />--><!-- DARK SKIN -->

		<!-- styleswitcher - demo only -->
		<link href="${path}/resources/assets/css/color_scheme/orange.css" rel="alternate stylesheet" type="text/css" title="orange" />
		<link href="${path}/resources/assets/css/color_scheme/red.css" rel="alternate stylesheet" type="text/css" title="red" />
		<link href="${path}/resources/assets/css/color_scheme/pink.css" rel="alternate stylesheet" type="text/css" title="pink" />
		<link href="${path}/resources/assets/css/color_scheme/yellow.css" rel="alternate stylesheet" type="text/css" title="yellow" />
		<link href="${path}/resources/assets/css/color_scheme/darkgreen.css" rel="alternate stylesheet" type="text/css" title="darkgreen" />
		<link href="${path}/resources/assets/css/color_scheme/green.css" rel="alternate stylesheet" type="text/css" title="green" />
		<link href="${path}/resources/assets/css/color_scheme/darkblue.css" rel="alternate stylesheet" type="text/css" title="darkblue" />
		<link href="${path}/resources/assets/css/color_scheme/blue.css" rel="alternate stylesheet" type="text/css" title="blue" />
		<link href="${path}/resources/assets/css/color_scheme/brown.css" rel="alternate stylesheet" type="text/css" title="brown" />
		<link href="${path}/resources/assets/css/color_scheme/lightgrey.css" rel="alternate stylesheet" type="text/css" title="lightgrey" />
		<!-- /styleswitcher - demo only -->
		
		<!-- STYLESWITCHER - REMOVE ON PRODUCTION/DEVELOPMENT -->
		<link href="${path}/resources/assets/plugins/styleswitcher/styleswitcher.css" rel="stylesheet" type="text/css" />		

		<!-- Morenizr -->
		<script type="text/javascript" src="${path}/resources/assets/plugins/modernizr.min.js"></script>
		
		<link href="${path}/resources/assets/css/fontsize.css" />
	</head>
	<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="${path}/resources/assets/images/boxed_background/1.jpg"  -->

		<!-- TOP NAV -->
		<header id="topNav">
			<div class="container">

				<!-- Mobile Menu Button -->
				<button class="btn btn-mobile" data-toggle="collapse" data-target=".nav-main-collapse">
					<i class="fa fa-bars"></i>
				</button>

				<!-- Logo text or image -->
				<a class="logo" href="index.html">
					<img src="${path}/resources/assets/images/logo.png" alt="Atropos" />
				</a>

				<!-- Top Nav -->
				<div class="navbar-collapse nav-main-collapse collapse pull-right">
					<nav class="nav-main mega-menu">
						<ul class="nav nav-pills nav-main scroll-menu" id="topMain">
							<li class="dropdown">
								<a class="dropdown-toggle" href="#">
									Home <i class="fa fa-angle-down"></i>
								</a>
								<ul class="dropdown-menu">
									<li class="dropdown-submenu"><a href="#">Revolution Slider</a>
										<ul class="dropdown-menu">
											<li><a href="revolution-half-slider.html">Half Slider</a></li>
											<li><a href="revolution-full-slider.html">Full Slider</a></li>
											<li><a href="revolution-video.html">Full Video</a></li>
											<li><a href="revolution-ken-burns.html">Ken Burns</a></li>
											<li><a href="revolution-official-1.html">More Examples</a></li>
										</ul>
									</li>
									<li class="dropdown-submenu"><a href="#">Superslides Slider</a>
										<ul class="dropdown-menu">
											<li><a href="superslides-slider-half.html">Half Slider</a></li>
											<li><a href="superslides-slider-full.html">Full Slider</a></li>
											<li><a href="superslides-video.html">Half Video</a></li>
											<li><a href="superslides-video-full.html">Full Video</a></li>
										</ul>
									</li>
									<li class="divider"></li>
									<li><a href="index-extended.html">Extended</a></li>
									<li><a href="portfolio-home.html">Portfolio</a></li>
									<li><a href="shop-home.html">Shop</a></li>
									<li><a href="realestate-home.html">Real Estate</a></li>
									<li><a href="church-home.html">Church</a></li>
									<li><a href="medical-home.html">Medical</a></li>
									<li><a href="college-home.html">College</a></li>
									<li><a href="onepage-superslides.html" target="_blank">Onepage - Superslides</a></li>
									<li><a href="onepage-revolution.html" target="_blank">Onepage - Revolution</a></li>
									<li><a href="index-more.html">More...</a></li>
								</ul>
							</li>
							<li class="dropdown mega-menu-item mega-menu-two-columns">
								<a class="dropdown-toggle" href="#">
									Pages <i class="fa fa-angle-down"></i>
								</a>
								<ul class="dropdown-menu">
									<li>
										<div class="mega-menu-content">
											<div class="row">

												<div class="col-md-6">
													<ul class="sub-menu">
														<li>
															<ul class="sub-menu">

																<li><a href="shortcodes-rows.html"><i class="fa fa-star-o"></i> Shortcodes</a></li>
																<li><a href="page-about-us.html"><i class="fa fa-check-square-o"></i> About Us</a></li>
																<li><a href="page-about-me.html"><i class="fa fa-check-square-o"></i> About Me</a></li>
																<li><a href="page-team.html"><i class="fa fa-check-square-o"></i> Team</a></li>
																<li><a href="page-services.html"><i class="fa fa-check-square-o"></i> Services</a></li>
																<li><a href="page-faq.html"><i class="fa fa-check-square-o"></i> FAQ</a></li>
																<li><a href="page-support.html"><i class="fa fa-check-square-o"></i> Support</a></li>
																<li><a href="page-privacy-policy.html"><i class="fa fa-check-square-o"></i> Privacy Policy</a></li>
																<li><a href="page-terms-and-conditions.html"><i class="fa fa-check-square-o"></i> Terms Page</a></li>
																<li><a href="page-invoice.html"><i class="fa fa-check-square-o"></i> Invoice</a></li>
																<li class="dropdown-submenu">
																	<a href="#"><i class="fa fa-check-square-o"></i> Contact</a>
																	<ul class="dropdown-menu">
																		<li><a href="contact-us.html">Version 1</a></li>
																		<li><a href="contact-us-2.html">Version 2</a></li>
																		<li><a href="contact-us-3.html">Version 3</a></li>
																		<li><a href="contact-us-4.html">Version 4</a></li>
																	</ul>
																</li>
																<li><a href="page-sitemap.html"><i class="fa fa-sitemap"></i> Sitemap</a></li>
															</ul>
														</li>
													</ul>
												</div>

												<div class="col-md-6">
													<ul class="sub-menu">
														<li>
															<ul class="sub-menu">
																<li><a href="page-testimonials.html"><i class="fa fa-check-square-o"></i> Testimonials</a></li>
																<li><a href="page-pricing.html"><i class="fa fa-check-square-o"></i> Pricing</a></li>
																<li><a href="page-signin.html"><i class="fa fa-check-square-o"></i> Login</a></li>
																<li><a href="page-signup.html"><i class="fa fa-check-square-o"></i> Register</a></li>
																<li><a href="page-404.html"><i class="fa fa-check-square"></i> 404 Error</a></li>
																<li><a href="page-maintenance.html"><i class="fa fa-check-square"></i> Maintenance</a></li>
																<li class="dropdown-submenu">
																	<a href="#"><i class="fa fa-check-square"></i> Coming Soon</a>
																	<ul class="dropdown-menu">
																		<li><a href="page-coming-soon-image.html">Coming Soon - Image</a></li>
																		<li><a href="page-coming-soon-video.html">Coming Soon - Video</a></li>
																	</ul>
																</li>
																<li class="dropdown-submenu">
																	<a href="#"><i class="fa fa-check-square"></i> Custom Header</a>
																	<ul class="dropdown-menu">
																		<li><a href="page-header-basic.html">Basic</a></li>
																		<li><a href="page-header-image.html">Image</a></li>
																		<li><a href="page-header-overlay1.html">Overlay 1</a></li>
																		<li><a href="page-header-overlay2.html">Overlay 2</a></li>
																		<li><a href="page-header-overlay3.html">Overlay 3</a></li>
																		<li><a href="page-header-delayed-parallax.html">Delayed Parallax</a></li>
																		<li><a href="page-header-standard-parallax.html">Standard Parallax</a></li>
																	</ul>
																</li>
																<li><a href="page-full-width.html"><i class="fa fa-check-square-o"></i> Full width</a></li>
																<li><a href="page-left-sidebar.html"><i class="fa fa-check-square-o"></i> Left Sidebar</a></li>
																<li><a href="page-right-sidebar.html"><i class="fa fa-check-square-o"></i> Right Sidebar</a></li>
																<li><a href="email-template.html"><i class="fa fa-envelope"></i>Email Template</a></li>
															</ul>
														</li>
													</ul>
												</div>
														
											</div>
										</div>
									</li>
								</ul>
							</li>
							<li class="dropdown mega-menu-item mega-menu-fullwidth">
								<a class="dropdown-toggle" href="#">
									Features <i class="fa fa-angle-down"></i>
								</a>
								<ul class="dropdown-menu">
									<li>
										<div class="mega-menu-content">
											<div class="row">
												<div class="col-md-3">
													<ul class="sub-menu">
														<li>
															<span class="mega-menu-sub-title">General Features</span>
															<ul class="sub-menu">
																<li><a href="feature-grid-system.html">Grid System</a></li>
																<li><a href="feature-icons.html">Icons</a></li>
																<li><a href="feature-pricing-tables.html"><em>Pricing<span class="label label-warning pull-right">New</span> Tables</em></a></li>
																<li><a href="feature-testimonials.html"><em>Testimonials</em></a></li>
																<li><a href="email-template.html"><em>Email Template</em></a></li>
																<li><a href="shortcodes-rows.html"><em>Shortcodes</em></a></li>
																<li><a href="feature-animations.html">Animations</a></li>
																<li><a href="feature-typograpy.html">Typograpy</a></li>
															</ul>
														</li>
													</ul>
												</div>
												<div class="col-md-3">
													<ul class="sub-menu">
														<li>
															<span class="mega-menu-sub-title">Sliders</span>
															<ul class="sub-menu">
																<li><a href="feature-content-carousel.html">Content Carousel</a></li>
																<li><a href="revolution-official-1.html">(17) Premium Revolution Slider</a></li>
															</ul>
														</li>
													</ul>
												</div>
												<div class="col-md-3">
													<ul class="sub-menu">
														<li>
															<span class="mega-menu-sub-title">Headers</span>
															<ul class="sub-menu">
																<li><a href="header-1.html">Header Version 1</a></li>
																<li><a href="header-2.html">Header Version 2</a></li>
																<li><a href="header-3.html">Header Version 3</a></li>
																<li><a href="header-4.html">Header Version 4</a></li>
															</ul>
														</li>
													</ul>
												</div>
												<div class="col-md-3">
													<ul class="sub-menu">
														<li>
															<span class="mega-menu-sub-title">Unique Bonuses</span>
															<ul class="sub-menu">
																<li><a href="onepage-superslides.html" target="_blank">Onepage - Superslides</a></li>
																<li><a href="onepage-revolution.html" target="_blank">Onepage - Revolution</a></li>
																<li><a href="email-template.html">Email Template</a></li>
															</ul>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" href="#">
									<b>Special</b> <i class="fa fa-angle-down"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="magazine-home.html">Magazine - Home</a></li>
									<li><a href="magazine-category.html">Magazine - Category</a></li>
									<li><a href="magazine-single.html">Magazine - Single</a></li>
									<li class="divider"></li>
									<li><a href="realestate-home.html">Real Estate - Home</a></li>
									<li><a href="realestate-list.html">Real Estate - List</a></li>
									<li><a href="realestate-single.html">Real Estate - Single</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" href="#">
									Shop <i class="fa fa-angle-down"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="shop-home.html">Shop - Home</a></li>
									<li class="divider"></li>
									<li><a href="shop-full-width.html">Shop Full Width</a></li>
									<li><a href="shop-product-full-width.html">Shop Product Full Width</a></li>
									<li class="divider"></li>
									<li><a href="shop-sidebar.html">Shop Sidebar</a></li>
									<li><a href="shop-product-sidebar.html">Shop Product Sidebar</a></li>
									<li class="divider"></li>
									<li><a href="shop-cart.html">Shop Cart</a></li>
									<li><a href="shop-cc-pay.html">Shop Credit Card</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" href="#">
									Blog <i class="fa fa-angle-down"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="blog-full-width.html">Blog Without Sidebar</a></li>
									<li><a href="blog-left-sidebar.html">Blog With Sidebar Left</a></li>
									<li><a href="blog-right-sidebar.html">Blog With Sidebar Right</a></li>
									<li><a href="blog-timeline.html">Blog Timeline</a></li>
									<li><a href="blog-masonry.html">Blog Masonry</a></li>
									<li><a href="blog-masonry-full-width.html">Blog Masonry - Full Width</a></li>
									<li><a href="blog-masonry-sidebar.html">Blog Masonry - Sidebar</a></li>
									<li class="divider"></li>
									<li><a href="blog-post.html">Single Post</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-toggle" href="#">
									Portfolio <i class="fa fa-angle-down"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="portfolio-2-columns.html">2 Columns</a></li>
									<li><a href="portfolio-3-columns.html">3 Columns</a></li>
									<li><a href="portfolio-4-columns.html">4 Columns</a></li>
									<li><a href="portfolio-lightbox.html">Portfolio - Gallery</a></li>
									<li><a href="portfolio-full-width.html">Portfolio Full Width</a></li>
									<li><a href="portfolio-full-center.html">Portfolio Full Center</a></li>
									<li class="divider"></li>
									<li><a href="portfolio-single.html">Single - Basic</a></li>
									<li><a href="portfolio-single-extended.html">Single - Extended</a></li>
									<li><a href="portfolio-single-full-slider.html">Single - Full Slider</a></li>
								</ul>
							</li>

							<!-- GLOBAL SEARCH -->
							<li class="search">
								<!-- search form -->
								<form method="get" action="#" class="input-group pull-right">
									<input type="text" class="form-control" name="k" id="k" value="" placeholder="Search">
									<span class="input-group-btn">
										<button class="btn btn-primary notransition"><i class="fa fa-search"></i></button>
									</span>
								</form>
								<!-- /search form -->
							</li>
							<!-- /GLOBAL SEARCH -->

						</ul>
					</nav>
				</div>
				<!-- /Top Nav -->

			</div>

		</header>

		<span id="header_shadow"></span>
		<!-- /TOP NAV -->



		<!-- STYLESWITCHER - REMOVE ON PRODUCTION/DEVELOPMENT -->
		<div id="switcher">
			<div class="content-switcher" >        
				<h4>STYLE OPTIONS</h4>

				<p>10 Predefined Color Schemes</p>
				<ul>            
					<li><a href="#" onclick="setActiveStyleSheet('orange'); return false;" title="orange" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/1.png" alt="" width="30" height="30" /></a></li>
					<li><a href="#" onclick="setActiveStyleSheet('red'); return false;" title="red" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/2.png" alt="" width="30" height="30" /></a></li>
					<li><a href="#" onclick="setActiveStyleSheet('pink'); return false;" title="pink" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/3.png" alt="" width="30" height="30" /></a></li>
					<li><a href="#" onclick="setActiveStyleSheet('yellow'); return false;" title="yellow" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/4.png" alt="" width="30" height="30" /></a></li>
					<li><a href="#" onclick="setActiveStyleSheet('darkgreen'); return false;" title="darkgreen" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/5.png" alt="" width="30" height="30" /></a></li>
					<li><a href="#" onclick="setActiveStyleSheet('green'); return false;" title="green" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/6.png" alt="" width="30" height="30" /></a></li>
					<li><a href="#" onclick="setActiveStyleSheet('darkblue'); return false;" title="darkblue" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/7.png" alt="" width="30" height="30" /></a></li>
					<li><a href="#" onclick="setActiveStyleSheet('blue'); return false;" title="blue" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/8.png" alt="" width="30" height="30" /></a></li>
					<li><a href="#" onclick="setActiveStyleSheet('brown'); return false;" title="brown" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/9.png" alt="" width="30" height="30" /></a></li>
					<li><a href="#" onclick="setActiveStyleSheet('lightgrey'); return false;" title="lightgrey" class="color"><img src="${path}/resources/assets/images/demo/color_schemes/10.png" alt="" width="30" height="30" /></a></li>
				</ul>        

				<p>CHOOSE YOUR COLOR SKIN</p>
				<label><input class="dark_switch" type="radio" name="color_skin" id="is_light" value="light" checked="checked" /> Light</label>
				<label><input class="dark_switch" type="radio" name="color_skin" id="is_dark" value="dark" /> Dark</label>

				<hr />

				<p>CHOOSE YOUR LAYOUT STYLE</p>
				<label><input class="boxed_switch" type="radio" name="layout_style" id="is_wide" value="wide" checked="checked" /> Wide</label>
				<label><input class="boxed_switch" type="radio" name="layout_style" id="is_boxed" value="boxed" /> Boxed</label>


				<p>Patterns for Boxed Version</p>
				<div>
					<button onclick="pattern_switch('none');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/none.jpg" width="27" height="27" alt="" /></button>
					<button onclick="pattern_switch('pattern2');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/pattern2.png" width="27" height="27" alt="" /></button>
					<button onclick="pattern_switch('pattern3');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/pattern3.png" width="27" height="27" alt="" /></button>
					<button onclick="pattern_switch('pattern4');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/pattern4.png" width="27" height="27" alt="" /></button>
					<button onclick="pattern_switch('pattern5');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/pattern5.png" width="27" height="27" alt="" /></button>
				</div>

				<div>
					<button onclick="pattern_switch('pattern6');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/pattern6.png" width="27" height="27" alt="" /></button>
					<button onclick="pattern_switch('pattern7');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/pattern7.png" width="27" height="27" alt="" /></button>
					<button onclick="pattern_switch('pattern8');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/pattern8.png" width="27" height="27" alt="" /></button>
					<button onclick="pattern_switch('pattern9');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/pattern9.png" width="27" height="27" alt="" /></button>
					<button onclick="pattern_switch('pattern10');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/patterns/pattern10.png" width="27" height="27" alt="" /></button>
				</div>

				<p>Images for Boxed Version</p>
				<button onclick="background_switch('none');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/boxed_background/none.jpg" width="27" height="27" alt="" /></button>
				<button onclick="background_switch('assets/images/boxed_background/1.jpg');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/boxed_background/1_thumb.jpg" width="27" height="27" alt="" /></button>
				<button onclick="background_switch('assets/images/boxed_background/2.jpg');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/boxed_background/2_thumb.jpg" width="27" height="27" alt="" /></button>
				<button onclick="background_switch('assets/images/boxed_background/3.jpg');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/boxed_background/3_thumb.jpg" width="27" height="27" alt="" /></button>
				<button onclick="background_switch('assets/images/boxed_background/4.jpg');" class="pointer switcher_thumb"><img src="${path}/resources/assets/images/boxed_background/4_thumb.jpg" width="27" height="27" alt="" /></button>

				<hr />

				<div class="text-center">
					<button onclick="resetSwitcher();" class="btn btn-primary btn-xs">Reset Styles</button>
				</div>

				<div id="hideSwitcher">&times;</div>
			</div>
		</div>

		<div id="showSwitcher" class="styleSecondColor"><i class="fa fa-angle-double-right"></i></div>
		<!-- /STYLESWITCHER -->



		<!-- WRAPPER -->
		<div id="wrapper">

			<!-- PAGE TITLE -->
			<header id="page-title"> <!-- style="background-image:url('../assets/images/demo/parallax_bg.jpg')" -->
				<!--
					Enable only if bright background image used
					<span class="overlay"></span>
				-->

				<div class="container">
					<h1>Shortcodes</h1>

					<ul class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li class="active">Shortcodes</li>
					</ul>
				</div>
			</header>


			<section class="container">

				<div class="row">

					<aside class="col-md-3">

						<ul class="nav nav-list">
							<li><a href="shortcodes-rows.html"><i class="fa fa-circle-o"></i> Rows</a></li>
							<li><a href="shortcodes-counters.html"><i class="fa fa-circle-o"></i> Counters</a></li>
							<li><a href="shortcodes-toggles.html"><i class="fa fa-circle-o"></i> Toggles</a></li>
							<li><a href="shortcodes-forms.html"><i class="fa fa-circle-o"></i> Forms</a></li>
							<li><a href="shortcodes-editor.html"><i class="fa fa-circle-o"></i><span class="label label-warning pull-right">New</span> HTMl Editor</a></li>
							<li><a href="shortcodes-buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
							<li><a href="shortcodes-tabs-and-accordions.html"><i class="fa fa-circle-o"></i> Tabs &amp; Accordions</a></li>
							<li><a href="shortcodes-callouts.html"><i class="fa fa-circle-o"></i> Callouts</a></li>
							<li><a href="shortcodes-dividers.html"><i class="fa fa-circle-o"></i> Dividers</a></li>
							<li><a href="shortcodes-lightbox.html"><i class="fa fa-circle-o"></i> Lightbox</a></li>
							<li><a href="shortcodes-icons-and-boxes.html"><i class="fa fa-circle-o"></i> Icons &amp; Boxes</a></li>
							<li><a href="shortcodes-carousel.html"><i class="fa fa-circle-o"></i> Carousel</a></li>
							<li><a href="shortcodes-progress-bars.html"><i class="fa fa-circle-o"></i> Progress Bars</a></li>
							<li><a href="shortcodes-alerts.html"><i class="fa fa-circle-o"></i> Alerts</a></li>
							<li><a href="shortcodes-video.html"><i class="fa fa-circle-o"></i> Video</a></li>
							<li><a href="shortcodes-tooltips-and-popover.html"><i class="fa fa-circle-o"></i> Tooltips &amp; Popover</a></li>
							<li><a href="shortcodes-modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
						</ul>

					</aside>

					<div class="col-md-9">

						<h2><strong>Forms</strong> <small class="font300">Shortcodes</small></h2>

						<form action="#" method="post">
							<div class="row">

								<div class="col-md-12">
									<div class="form-group">
										<input type="text" value="" class="form-control" placeholder="Input Placeholder" />
									</div>
								</div>

								<div class="col-md-12">
									<div class="form-group">
										<label>Select</label>
										<select class="form-control pointer">
											<option value="" selected="selected"></option>
											<option value="">Option #1</option>
											<option value="">Option #2</option>

											<optgroup label="Optgroup">
												<option value="">Option #1</option>
												<option value="">Option #2</option>
											</optgroup>
										</select>
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-6">
										<label>Input</label>
										<input type="text" value="" class="form-control" />
									</div>
									<div class="col-md-6">
										<label>Input</label>
										<input type="email" value="" class="form-control" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-4">
										<label>Input</label>
										<input type="text" value="" class="form-control" />
									</div>
									<div class="col-md-4">
										<label>Input</label>
										<input type="email" value="" class="form-control" />
									</div>
									<div class="col-md-4">
										<label>Input</label>
										<input type="email" value="" class="form-control" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<div class="col-md-6">
										<label class="block">Checkbox</label>
										<input type="checkbox" value="" class="form-control" checked="checked" />
										<input type="checkbox" value="" class="form-control" />
										<input type="checkbox" value="" class="form-control" />
									</div>

									<div class="col-md-6">
										<label class="block">Radio</label>
										<input type="radio" name="radio_name" value="1" class="form-control" checked="checked" />
										<input type="radio" name="radio_name" value="2" class="form-control" />
										<input type="radio" name="radio_name" value="2" class="form-control" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<div class="col-md-12">
										<label>Textarea</label>
										<textarea rows="10" class="form-control"></textarea>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<button class="btn btn-primary"><i class="fa fa-check"></i> FORM SUBMIT</button> 
									<button class="btn btn-primary disabled">FORM SUBMIT DISABLED</button>
								</div>
							</div>
						</form>

					</div>

				</div>


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
								<img class="animate_fade_in" src="${path}/resources/assets/images/logo_footer.png" width="200" alt="" />
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



		<!-- JAVASCRIPT FILES -->
		<script type="text/javascript" src="${path}/resources/assets/plugins/jquery-2.1.3.min.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/jquery.cookie.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/jquery.appear.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/jquery.isotope.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/masonry.js"></script>

		<script type="text/javascript" src="${path}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/owl-carousel/owl.carousel.min.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/stellar/jquery.stellar.min.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/knob/js/jquery.knob.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/jquery.backstretch.min.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/superslides/dist/jquery.superslides.min.js"></script>
		<script type="text/javascript" src="${path}/resources/assets/plugins/styleswitcher/styleswitcher.js"></script><!-- STYLESWITCHER - REMOVE ON PRODUCTION/DEVELOPMENT -->
		

		<script type="text/javascript" src="${path}/resources/assets/js/scripts.js"></script>


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