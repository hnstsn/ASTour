package com.project.astour.service.member;

import javax.servlet.http.HttpSession;

import com.project.astour.model.dto.member.MemberVO;

public interface MemberService {
	
	public MemberVO loginCheck(MemberVO vo, HttpSession session);
	public void logout(HttpSession session);
	public boolean idCheck(String mid);
	public void joinMember(MemberVO vo);

}
