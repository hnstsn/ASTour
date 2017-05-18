package com.project.astour.service.email;

public interface EmailService {
	
	// 인증번호 보내는 함수
    public void send(String to);
    // 인증번호와 일치하는지 확인하는 함수
    public boolean certify(String cerNum);

}
