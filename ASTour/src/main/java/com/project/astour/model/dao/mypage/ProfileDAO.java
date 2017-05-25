package com.project.astour.model.dao.mypage;

import java.util.List;

import com.project.astour.model.dto.member.ProfileVO;

public interface ProfileDAO {
	
	public List<ProfileVO> getProfile(int mpk);
	public void insertPrf(ProfileVO prf);

}
