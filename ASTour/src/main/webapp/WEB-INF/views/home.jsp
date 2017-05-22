<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<title>AStour</title>
	<meta name="keywords" content="HTML5,CSS3,Template" />
	<meta name="description" content="" />
	<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

	<!-- mobile settings -->
	<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
	
	<!-- AST : bootstrap을 위한 것들을 모아놓은  jsp page -->
	<%@ include file="include/bootstap_collect.jsp" %>

</head>
<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="assets/images/boxed_background/1.jpg"  -->

	<!-- AST : menu부분을 위한 jsp page -->
	<jsp:include page="include/menu.jsp" />
	
	<jsp:include page="${curPage}" />


	<!-- FOOTER -->
	<footer>

		<!-- copyright , scrollTo Top -->
		<div class="footer-bar">
			<div class="container">
				<span class="copyright">Copyright &copy; ASTour. All Rights Reserved.</span>
				<a class="toTop" href="#topNav">BACK TO TOP <i class="fa fa-arrow-circle-up"></i></a>
			</div>
		</div>
		<!-- copyright , scrollTo Top -->
	</footer>
	<!-- /FOOTER -->

</body>
</html>