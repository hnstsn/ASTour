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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>	
<!-- 채팅 -->
<script type="text/javascript" src="${path}/resources/chat/sockjs.min.js"></script>	
<script>
$(function(){
	conn();
});


var wsocket;
//웹 소켓 연결
function conn() {
	// ip 주소 : 소켓통신 연결
	wsocket = new SockJS("${path}/chat-ws");
	//wsocket = new WebSocket("ws://localhost${path}/echo-ws");
	console.log("conn : " + wsocket);
	wsocket.onopen = onOpen;
	wsocket.onmessage = onMessage;
	wsocket.onclose = onClose;
}

var from = "${sessionScope.member.mname}";

//웹 소켓 접속
function onOpen() {
	// 보내는 사람
	// 받는 사람
	message={};
    message.from = from;
    wsocket.send(JSON.stringify(message));
}

var is_open = false;
//메세지 전송
function onMessage(evt) {
	var tidx = evt.data.indexOf("-");
	var to = evt.data.substring(0, tidx);
	var fidx = evt.data.indexOf(":");
	var from = evt.data.substring(tidx+1, fidx);
	// 보내는 대상이 내가 맞는지 && 열려있는 지 확인
	if (to == "${sessionScope.member.mname}" && !is_open) {
		
		//window.open("${path}/sns/chat.do?from="+to + "&to=" + from, "채팅", "width=500, height=600, left=200, top=100");
		doChat(to, from);
		// 열려있으면 true로
		is_open = true;
	}
}

// 종료
function onClose(evt) {
}

//채팅창 띄우는 팝업 함수
function doChat(from, to) {
	window.open("${path}/sns/chat.do?from="+from+"&to="+to, "채팅", "width=500, height=600, left=200, top=100");
}
</script>	
</head>
<body>

	<!-- AST(CSW) : menu부분을 위한 jsp page -->
	<jsp:include page="include/menu.jsp" />
	
	<!-- AST(CSW) : 전환되는 페이지 -->
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