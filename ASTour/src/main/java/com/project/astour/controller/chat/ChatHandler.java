package com.project.astour.controller.chat;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.project.astour.model.dto.mypage.MessageVO;

public class ChatHandler extends TextWebSocketHandler {
	
	private static final Logger logger = LoggerFactory.getLogger("ChatHandler.class");
	
	private List<WebSocketSession> users = null;
	
//	사용자들을 담는 list
	public ChatHandler() {
		users = new ArrayList<WebSocketSession>();
	}
	
//	소켓 접속과 관련된 함수
//	WebSocketSession : 접속한 유저(로그인)
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// 유저 추가
		users.add(session);
		logger.info("접속유저 : session id : " + session.getId());
	}
	
//	소켓 접속 종료와 관련된 함수
//	WebSocketSession : 연결을 끊는 유저(로그아웃)
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
//		접속 종료
		users.remove(session);
		logger.info(session.getId() + " 퇴장");
	}
	
/*	채팅, 메세지 전송과 관련된 함수
 *  handleTextMessage - Send와 Emit
 *  Send : 클라이언트가 서버에게 메세지를 보낸다
 *  Emit : 서버에 연결된 클라이언트에게 메세지를 보낸다
 *  WebSocketSession : 클라이언트
 *  TextMessage : 메세지 내용
 */
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		logger.info("클라이언트가 보낸 메세지 : " + message.getPayload());
		// json형식으로 받은 메세지를 해석
		ObjectMapper mapper = new ObjectMapper();
		MessageVO vo = mapper.readValue(message.getPayload(), MessageVO.class);
		// 메세지 내용
		String msg = vo.getMessage();
		// 보내는 사람
		String from = vo.getFrom();
		// 받는 사람
		String to = vo.getTo();
		
		// 로그인 했는지 확인
		boolean log_in = false;
		
		// map. key는 session.getId, value는 메세지를 보내려는 사람
		session.getAttributes().put(session.getId(), from);
		
		// 로그인 했는지 확인
		for (WebSocketSession wss : users) {
			if (to.equals(wss.getAttributes().get(wss.getId()))) {
				log_in = true;
				System.out.println("로그인 함");
			} else {
				System.out.println("로그아웃 상탱");
			}
		}
		
		// 로그아웃 상태이면 - 로그아웃 상태라고 보여준다
		//if (!log_in) {
			for (WebSocketSession wss : users) {
				// from으로 시작 : 나, to로 시작 : 상대방
				if (from.equals(wss.getAttributes().get(wss.getId()))) {
					
					wss.sendMessage(new TextMessage(msg + "."));
					System.out.println("로그아웃 상태!!!");
				}
			}
		//}
	}

}
