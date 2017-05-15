<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<%@ include file="../include/bootstap_collect.jsp" %>
	
</head>
<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="resources/assets/images/boxed_background/1.jpg"  -->

	<!-- WRAPPER -->
	<div id="wrapper">
     
		<!-- PAGE TITLE -->
		<header id="page-title"> <!-- style="background-image:url('../assets/images/demo/parallax_bg.jpg')" -->
			<!--
				Enable only if bright background image used
				<span class="overlay"></span>
			-->
			<div class="container">
				<h1>회원가입</h1>
			</div>
		</header>


		<section class="container">

			<div class="row">

				<div class="col-md-9">

					<form action="#" method="post">
						<div class="row">

							<div class="form-group">
								<div class="col-md-6">
									<label>*아이디</label>
									<input type="text" value="" class="form-control" />
								</div>
								<div class="col-md-6">
									<label>*비밀번호</label>
									<input type="email" value="" class="form-control" />
								</div>
								<div class="col-md-6">
									<label>*비밀번호 확인</label>&nbsp;<span></span>
									<input type="text" value="" class="form-control" />
								</div>
								<div class="col-md-6">
									<label>*이름</label>
									<input type="email" value="" class="form-control" />
								</div>
								<div class="col-md-6">
									<label>*휴대폰</label>
									<input type="email" value="" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<button class="btn btn-success"><i class="fa fa-check"></i> 회원가입</button> 
								<button class="btn btn-primary">초기화</button>
							</div>
						</div>
					</form>

				</div>

			</div>


		</section>

	</div>
	<!-- /WRAPPER -->

</body>
</html>