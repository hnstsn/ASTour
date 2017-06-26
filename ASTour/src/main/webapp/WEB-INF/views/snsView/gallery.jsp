<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/bootstap_collect.jsp"%>
<%@ include file="../include/sessionCheck.jsp"%>
</head>
<body>
	<section id="portfolio" class="container">

				<h2>누구누구님의 사진첩</h2>


				<ul class="nav nav-pills isotope-filter isotope-filter" data-sort-id="isotope-list" data-option-key="filter">
					<li data-option-value="*" class="active"><a href="#">전체보기</a></li>
					<li data-option-value=".development"><a href="#">프로필</a></li>
					<li data-option-value=".photography"><a href="#">리뷰 게시판</a></li>
					<li data-option-value=".design"><a href="#">나의 게시물</a></li>
				</ul>


				<div class="row">

					<ul class="sort-destination isotope" data-sort-id="isotope-list">

						<li class="isotope-item col-sm-6 col-md-4 development"><!-- item -->
							<div class="item-box">
								<figure>
									<a class="item-hover" href="portfolio-single.html">
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>PROJECT</strong> DETAIL
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/scouter-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 photography"><!-- item 2 -->
							<div class="item-box">
								<figure>
									<a class="item-hover lightbox" href="http://www.youtube.com/watch?v=W7Las-MJnJo" data-plugin-options='{"type":"iframe"}'>
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>VIEW</strong> VIDEO
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/black-kitty-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Video Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 design"><!-- item 3 -->
							<div class="item-box">
								<figure>
									<a class="item-hover" href="portfolio-single.html">
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>PROJECT</strong> DETAIL
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/merchant2-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 photography"><!-- item 4 -->
							<div class="item-box">
								<figure>
									<a class="item-hover" href="portfolio-single.html">
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>PROJECT</strong> DETAIL
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/flippin-the-bird1-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 development"><!-- item 5 -->
							<div class="item-box">
								<figure>
									<a class="item-hover lightbox" href="http://www.youtube.com/watch?v=W7Las-MJnJo" data-plugin-options='{"type":"iframe"}'>
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>VIEW</strong> VIDEO
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/night_to_remember1-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Video Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 design"><!-- item 6 -->
							<div class="item-box">
								<figure>
									<a class="item-hover" href="portfolio-single.html">
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>PROJECT</strong> DETAIL
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/spacebound-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 photography design"><!-- item 7 -->
							<div class="item-box">
								<figure>
									<a class="item-hover lightbox" href="http://www.youtube.com/watch?v=W7Las-MJnJo" data-plugin-options='{"type":"iframe"}'>
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>VIEW</strong> VIDEO
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/be-my-guest1-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 development"><!-- item 8 -->
							<div class="item-box">
								<figure>
									<a class="item-hover" href="portfolio-single.html">
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>PROJECT</strong> DETAIL
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/black-box5-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 development"><!-- item -->
							<div class="item-box">
								<figure>
									<a class="item-hover" href="portfolio-single.html">
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>PROJECT</strong> DETAIL
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/weather-app-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 photography"><!-- item 2 -->
							<div class="item-box">
								<figure>
									<a class="item-hover lightbox" href="http://www.youtube.com/watch?v=W7Las-MJnJo" data-plugin-options='{"type":"iframe"}'>
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>VIEW</strong> VIDEO
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/theMoose-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 design"><!-- item 3 -->
							<div class="item-box">
								<figure>
									<a class="item-hover" href="portfolio-single.html">
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>PROJECT</strong> DETAIL
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/tumblr_mopqj9QUeq1st5lhmo1_12801-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

						<li class="isotope-item col-sm-6 col-md-4 photography"><!-- item 4 -->
							<div class="item-box">
								<figure>
									<a class="item-hover lightbox" href="http://www.youtube.com/watch?v=W7Las-MJnJo" data-plugin-options='{"type":"iframe"}'>
										<span class="overlay color2"></span>
										<span class="inner">
											<span class="block fa fa-plus fsize20"></span>
											<strong>VIEW</strong> VIDEO
										</span>
									</a>
									<img class="img-responsive" src="assets/images/demo/portfolio/scouter-600x403.jpg" width="260" height="260" alt="">
								</figure>
								<div class="item-box-desc">
									<h4>Atropos Project</h4>
									<small class="styleColor">29 June, 2014</small>
								</div>
							</div>
						</li>

					</ul>

				</div><!-- /.masonry-container -->

				<!-- CALLOUT -->
				<div class="bs-callout text-center nomargin-bottom">
					<h3>Do you like what you see? <a href="contact-us.html" target="_blank" class="btn btn-primary btn-lg">Yes, let's work together!</a></h3>
				</div>
				<!-- /CALLOUT -->


			</section>
</body>
</html>