package com.project.astour.service.member;

import com.project.astour.model.dto.member.MemberVO;

public interface MemberService {
	
	public boolean idCheck(String mid);
	public void joinMember(MemberVO vo);

}
