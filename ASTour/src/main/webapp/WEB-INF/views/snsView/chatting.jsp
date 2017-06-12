<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>채팅창</title>
<meta name="keywords" content="HTML5,CSS3,Template" />
<meta name="description" content="" />
<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />
<!-- mobile settings -->
<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- 채팅 -->
<script type="text/javascript" src="${path}/resources/chat/sockjs.min.js"></script>
<script>
var message = {};
$(document).ready(function() {
	
	conn();
	
	// 전송 버튼을 누르면
	$("#sendBtn").click(function() {
		sendMsg();
	});
	
	// 엔터를 누르면
	$("#msg").keyup(function() {
		if (event.keyCode == 13) {
			sendMsg();
		}
	});
});

function sendMsg() {
	var msg = $("#msg").val();
	// 보내는 사람
	var from = "${sessionScope.member.mname}";
	// 받는 사람
	var to = $("#to").val();
	
	message = {};
	message.message = msg;
	message.from = from;
	message.to = to;
	wsocket.send(JSON.stringify(message));
	
	$("#msg").val("");
}

function apdMsg(msg) {
	$("#chatMsgArea").append(msg + "<br>");
	
	// 채팅글의 크기
	var ht = $("#chatArea").height();
	var mx = $("#chatMsgArea").height() - ht;
	// 글에서 scroll top위치 지정을 위해서 화면의 높이에서 채팅글의 높이를 빼줌
	$("#chatArea").scrollTop(mx);
}


var wsocket;
// 웹 소켓 연결
function conn() {
	// ip 주소 : 소켓통신 연결
	wsocket = new SockJS("${path}/chat-ws");
	//wsocket = new WebSocket("ws://localhost${path}/echo-ws");
	wsocket.onopen = onOpen;
	wsocket.onmessage = onMessage;
	wsocket.onclose = onClose;
	
} 

 //웹 소켓 접속
function onOpen() {
	// 보내는 사람
	var from = "${from}";
	// 받는 사람
	var to = $("#to").val();
	message={};
    message.from = from;
    message.to = to;
    wsocket.send(JSON.stringify(message));
}
 
// 메세지 전송
function onMessage(evt) {
	//console.log(evt.data);
	// 로그아웃이란 글자가 있는지 확인
	var is_log_out = evt.data.indexOf("로그아웃");
	// 로그아웃 상태이면
	if (is_log_out != -1) {
		// 메시지 입력란을 숨긴다
		$("#msg").hide();
		$("#sendBtn").hide();
		apdMsg(evt.data);
		
	// 상대방이 로그인 상태라면
	} else {
		// to를 찾기 위한 idx
		var tidx = evt.data.indexOf("-");
		var to = evt.data.substring(0, tidx);
		// from을 찾기 위해
		var fidx = evt.data.indexOf(":");
		var from = evt.data.substring(tidx+1, fidx);
		var msg = evt.data.substring(fidx+1);
		if (msg != "null") {
			apdMsg(from + " : " + msg);
		}
	}
}

// 종료
function onClose(evt) {
}
</script>	
<style>
#chatArea {
	width: 100%;
	height: 400px;
	text-align: left;
	overflow-y: auto;
}
</style>
</head>
<body>
	<h2>${to}님과 채팅</h2>
	<div id="chatArea">
		<div id="chatMsgArea"></div>
	</div>
	<div>
		<input type="hidden" id="to" value="${to}" />
		<input type="text" id="msg" />
		<input type="button" id="sendBtn" value="전송" />
	</div>
</body>
</html>