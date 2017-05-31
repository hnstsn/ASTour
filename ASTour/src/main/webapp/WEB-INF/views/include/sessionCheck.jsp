<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- AST(CSW) : 세션 체크하는 jsp -->
<c:if test="${sessionScope.member == null}">
	<script>
		alert("로그인 후 사용가능합니다.");
		location.href="${path}";
	</script>
</c:if>