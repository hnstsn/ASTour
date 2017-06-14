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
<!-- AST : 채팅 기능 CSW 디자인 HSB -->
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
	// 보내는 사람을 찾기 위해
	var idx = msg.indexOf(":");
	// 보내는 사람
	var me = msg.substring(0, idx);
	// 내용
	var message = msg.substring(idx+1);
	
	// 내가 보내는 것이라면
	if (me == "${sessionScope.member.mname}") {
		$("#chatMsgArea").append('<div class="from_me" align="right">' + '<p>' + message + '</p>' +  "</div>" + '<div class="clear"></div>');
	// 상대방이 보내는 것이라면
	} else{
		$("#chatMsgArea").append('<div class="from_you" align="left">' + '<p>' + message + '</p>' +  "</div>" + '<div class="clear"></div>');
	}
	
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
		// 처음 접속시 
		if (msg != "null") {
			apdMsg(from + ":" + msg);
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
	height: 430px;
	text-align: left;
	overflow-y: auto;
}

hr.two {
	width: 100%;
	color: green;
	border: thin solid green;
}

body {
	font-family: "Helvetica Neue";
	font-size: 20px;
	font-weight: normal;
}

section {
	max-width: 450px;
	margin: 50px auto;
}

section div {
	max-width: 255px;
	word-wrap: break-word;
	margin-bottom: 20px;
	line-height: 24px;
}

.clear {
	clear: both;
}

.from_me {
	position: relative;
	padding: 0px 10px;
	margin: 5px;
	color: white;
	background: #0B93F6;
	border-radius: 20px;
	float: right;
}

.from_me:before {
	content: "";
	position: absolute;
	z-index: -1;
	bottom: -2px;
	right: -7px;
	height: 20px;
	border-right: 20px solid #0B93F6;
	border-bottom-left-radius: 16px 14px;
	-webkit-transform: translate(0, -2px);
}

.from_me:after {
	content: "";
	position: absolute;
	z-index: 1;
	bottom: -2px;
	right: -56px;
	width: 26px;
	height: 20px;
	background: white;
	border-bottom-left-radius: 10px;
	-webkit-transform: translate(-30px, -2px);
}

.from_you {
	position: relative;
	padding: 0px 10px;
	margin: 1px;
	background: #E5E5EA;
	border-radius: 25px;
	color: black;
	float: left;
}

.from_you:before {
	content: "";
	position: absolute;
	z-index: 2;
	bottom: -2px;
	left: -7px;
	height: 20px;
	border-left: 20px solid #E5E5EA;
	border-bottom-right-radius: 16px 14px;
	-webkit-transform: translate(0, -2px);
}

.from_you:after {
	content: "";
	position: absolute;
	z-index: 3;
	bottom: -2px;
	left: 4px;
	width: 26px;
	height: 20px;
	background: white;
	border-bottom-right-radius: 10px;
	-webkit-transform: translate(-30px, -2px);
}

.button {
    display: inline-block;
    outline: none;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    font: 14px/100% Arial, Helvetica, sans-serif;
    padding: .5em 1em .55em;
    text-shadow: 0 1px 1px rgba(0,0,0,.3);
    -webkit-border-radius: .5em; 
    -moz-border-radius: .5em;
    border-radius: .5em;
    -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
    -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
    box-shadow: 0 1px 2px rgba(0,0,0,.2);
}
.button:hover {
    text-decoration: none;
}
.button:active {
    position: relative;
    top: 1px;
}

.bigrounded {
    -webkit-border-radius: 2em;
    -moz-border-radius: 2em;
    border-radius: 2em;
}

.orange {
    color: #fef4e9;
    border: solid 1px #da7c0c;
    background: #f78d1d;
    background: -webkit-gradient(linear, left top, left bottom, from(#faa51a), to(#f47a20));
    background: -moz-linear-gradient(top,  #faa51a,  #f47a20);
    filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#faa51a', endColorstr='#f47a20');
}
.orange:hover {
    background: #f47c20;
    background: -webkit-gradient(linear, left top, left bottom, from(#f88e11), to(#f06015));
    background: -moz-linear-gradient(top,  #f88e11,  #f06015);
    filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#f88e11', endColorstr='#f06015');
}
.orange:active {
    color: #fcd3a5;
    background: -webkit-gradient(linear, left top, left bottom, from(#f47a20), to(#faa51a));
    background: -moz-linear-gradient(top,  #f47a20,  #faa51a);
    filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#f47a20', endColorstr='#faa51a');
}

.textarea {
	width: 80%;
	height: 25px;
   	border: 1px solid red;
   	border-radius: 10px;
   	padding: 5px;
   	padding-left: 10px;
   	margin-left: 5px;
   	margin-right: 2px; 
}
</style>
</head>
<body>
	
	<div class="well well-sm" style="width: 100%; text-align: center;">
		<h2>${to}님과 채팅</h2>
		</div>
	<hr class="two" />
	
	<div id="chatArea" style="overflow-x:hidden">
		<div id="chatMsgArea">
		</div>
	</div>
	
	<hr class="two"/>
	
	<div>
		<input type="hidden" id="to" value="${to}" />
		<input class="textarea" type="text" id="msg" />
		<button type="button" class="button bigrounded orange" id="sendBtn">전송</button>
	</div>
	
	
	
	
<!-- 	<style>
.button {
border:1x solid #ff0080;    /*---테두리 정의---*/
background-Color:#ffe6f2;   /*--백그라운드 정의---*/
font:12px 굴림;      /*--폰트 정의---*/
font-weight:bold;   /*--폰트 굵기---*/
color:#ff0080;    /*--폰트 색깔---*/
width:130;height:30;  /*--버튼 크기---*/
}
</style>

<input type="button" value="잠탱이버튼 (∩_∩)" class="button"> -->
	
	
</body>
</html>