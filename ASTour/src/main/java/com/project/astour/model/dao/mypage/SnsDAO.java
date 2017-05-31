package com.project.astour.model.dao.mypage;

import java.util.List;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsDAO {

	public List<snsVO> snsList(int mpk);
	public MemberVO memList(int mpk); 
	public List<MemberVO> pepoleList(String mname);
	public List<snsVO> reviewSelect(int mpk);
	public void insBrd(snsVO sns) throws Exception;
	public int getSpk();
	public void insBrdFiles (SnsFileVO sFile);
	
}
