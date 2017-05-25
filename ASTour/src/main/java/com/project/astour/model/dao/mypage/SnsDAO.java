package com.project.astour.model.dao.mypage;

import java.util.List;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsDAO {

	public List<snsVO> snsList();
	public void contentdelete(int spk);
//	public List<MemberVO> memList();
}
