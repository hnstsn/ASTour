<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head>
<%@ include file="../include/bootstap_collect.jsp"%>
<meta charset="utf-8" />
<title>Atropos - Responsive Multipurpose</title>
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

<script type="text/javascript">
	/*	$(document).ready(function() {
		$("#selectview").click(function() {
			var test2=$('#contact_select').val();
			if(test2==1){
				document.getElementById('view').innerHTML ="<label>태그*</label>"+"<input type=\"email\" value=\"\" class=\"form-control\" id=\"contact_email\">"
			}
			else{
				document.getElementById('view').innerHTML ="";
			}
		});
		$("#contact_sub").click(function() {
			var contact_name=$('#contact_name').val(); //제목
			var contact_tag=$('#contact_tag').val(); //태그
			var contact_message=$('#contact_message').val(); //내용
			var contact_image=$('#contact_image').val(); //이미지 데이터전송
		}); 
	}); */
</script>
</head>

<body>
	<%@ include file="../include/menu.jsp"%>

	<!-- WRAPPER -->
	<div id="wrapper">
		<br />
		<section id="contact" class="container">
			<div class="row">
				<!-- FORM -->
				<div class="col-md-12">
					<h2>글쓰기</h2>
					<form action="${path }/sns/insert.do" class="white-row" method="post">
						<div class="row">
							<div class="form-group">
								<div class="col-md-4">
									<label>제목 *</label> <input type="text" value=""
										class="form-control" name="stitle" id="stitle">
								</div>

								<div class="col-md-4" id="selectview">
									<label>리뷰&나의게시물 *</label> <select class="form-control" name="ssort"
										id="ssort">
										<option value="1">리뷰</option>
										<option value="2">나의게시물</option>
									</select>
								</div>

								<div class="col-md-4" id="view">
									<label>태그*</label> <input type="text" class="form-control"
										name="stag" id="stag" value="">
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<div class="col-md-12">
									<label>이미지사진</label> <input type="file" value=""
										class="form-control" name="contact_image" id="contact_image">
								</div>
							</div>
						</div>

						<div class="row">
							<div class="form-group">
								<div class="col-md-12">
									<label>내용</label>
									<textarea maxlength="5000" rows="10" class="form-control"
										name="scontent" id="scontent"></textarea>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<input type="submit" class="btn btn-primary btn-lg"
									value="확인">
							</div>
						</div>
						
					</form>

				</div>
				<!-- /FORM -->

			</div>

		</section>

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