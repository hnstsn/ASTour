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

//모바일과 pc 구별하는 코드 중요함 아무도 지우지마셈
/* var filter = "win32|win64|mac|macintel";
if (navigator.platform) {
   if (filter.indexOf(navigator.platform.toLowerCase()) < 0) { //mobile 
      alert('mobile 접속');
   } else { //pc 
      alert('pc 접속');
   }
} */

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

var from = "${sessionScope.member.mpk}";

//웹 소켓 접속
function onOpen() {
	// 보내는 사람
	// 받는 사람
	message={};
    message.from = from;
    wsocket.send(JSON.stringify(message));
}

var is_open = false;
var doChatOpen;

//메세지 전송
function onMessage(evt) {
	var tidx = evt.data.indexOf("-");
	var to = evt.data.substring(0, tidx);
	var fidx = evt.data.indexOf(":");
	var from = evt.data.substring(tidx+1, fidx);
	var msg = evt.data.substring(fidx+1);
	
	// 채팅중인지 확인
	var is_chat_out = false;
	if (msg == "채팅방을 나갔습니다.") {
		is_chat_out = true;
	}
	console.log("msg : " + msg + ", home_chatout ? " + is_chat_out);
	
	// 처음 띄우는 것이면
	if (!is_open) {
		// 보내는 대상이 내가 맞으면
		if (to == "${sessionScope.member.mpk}") {
			doChatOpen = window.open("${path}/sns/chat.do?from="+to+"&to="+from, "채팅", "width=500, height=600, left=200, top=100");
			console.log("doChatOpen : " + doChatOpen);
			is_open = true;
		}
	// 처음이 아니면
	} else {
		// 채팅창이 켜져있으면
		if (!doChatOpen.closed) 
			 doChatOpen.focus();
		// 내 채팅창이 꺼져있으면
		else { 
			// 상대방이 채팅방을 나가지 않았으면
			if (to == "${sessionScope.member.mpk}" && !is_chat_out) {
				doChatOpen = window.open("${path}/sns/chat.do?from="+to+"&to="+from, "채팅", "width=500, height=600, left=200, top=100");
				is_open = true;
			}
		}
	}
}

// 종료
function onClose(evt) {
	wsocket.close();
}

// from : 채팅을 시작하는 사람, to : 채팅을 받는 사람  from → to
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