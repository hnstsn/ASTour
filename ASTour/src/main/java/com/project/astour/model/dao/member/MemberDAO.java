package com.project.astour.model.dao.member;

import com.project.astour.model.dto.member.MemberVO;

public interface MemberDAO {
	
	public MemberVO loginCheck(MemberVO vo);
	public int idCheck(String mid);
	public void joinMember(MemberVO vo);
	public MemberVO getInfo(int mpk);
	public void modifyInfo(MemberVO vo);
	public String getId(String mname, String mphone);
	public String getPw(String mid, String mname, String mphone); 
	
}
