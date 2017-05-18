package com.project.astour.service.email;

import java.util.Random;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {
	
	// 입력한 인증번호 체크를 위한 인증번호 변수 
	String repetitionNum;
	
	@Inject
	 private JavaMailSender mailSender;
	
	// 인증번호 보내는 함수
	public void send(String to) {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			// 메일 제목
			helper.setSubject("ASTour에 오신 것을 환영합니다.");
			// 인증번호 생성
			int randomNum = new Random().nextInt(100000) + 10000;
			// repetitionNum 인증번호를  String으로. 또 체크할 변수로
			repetitionNum = String.valueOf(randomNum);
			String text = "ASTour에 오신 것을 환영합니다.\n입력하실 인증번호는 " + repetitionNum;
			// 메일 내용
			helper.setText(text);
			// 보내는 사람
			helper.setFrom("astour1865@gmail.com");
			// 받는 사람
			helper.setTo(to);
			// 메일 보내기
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
	// 인증번호와 일치하는지 확인하는 함수
	public boolean certify(String cerNum) {
		// 인증번호와 입력한 번호가 같은지 확인
		return (repetitionNum.equals(cerNum)) ? true : false;
	}

}
