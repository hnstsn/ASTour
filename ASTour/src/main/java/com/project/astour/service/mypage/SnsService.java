package com.project.astour.service.mypage;

import java.util.List;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsService {

	public List<snsVO> snsList(int mpk);
	public void contentDelete(int spk);
	public List<MemberVO> memList(int mpk);
	public List<MemberVO> pepoleList(String mname);
	public List<snsVO> reviewSelect(int mpk);
	public void insBrd(snsVO sns) throws Exception;
}
