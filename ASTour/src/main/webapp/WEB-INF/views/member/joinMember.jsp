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
				<h1>Shortcodes</h1>
			</div>
		</header>


		<section class="container">

			<div class="row">

				<div class="col-md-9">

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

</body>
</html>