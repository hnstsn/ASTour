package com.project.astour.model.dao.member;

import com.project.astour.model.dto.member.MemberVO;

public interface MemberDAO {
	
	public int idCheck(String mid);
	public void joinMember(MemberVO vo);

}
