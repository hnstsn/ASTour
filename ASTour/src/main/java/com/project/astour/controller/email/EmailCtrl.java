package com.project.astour.controller.email;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.astour.service.email.EmailService;

@RestController
@RequestMapping("email")
public class EmailCtrl {
//	AST(CSW) : 이메일 전송
	
	private static final Logger logger = LoggerFactory.getLogger("EmailCtrl.class");
	
	@Inject
	private EmailService eService;
	
	// 아이디를 입력받아 그 아이디로 메일을 보낸다
	@RequestMapping("certification.do")
	public void email(@RequestParam String mid) {
		logger.info("입력 받은 아이디 :" + mid);
		eService.send(mid);
	}
	
	// 입력한 인증번호가 맞는지 확인
	@RequestMapping("cerCheck.do")
	public boolean checkCertificationNum(@RequestParam String certifyNum) {
		logger.info("입력한 인증번호 : " + certifyNum);
		logger.info("결과 : " + eService.certify(certifyNum));
		return eService.certify(certifyNum);
	}

}
