package com.project.astour.service.mypage;

import com.project.astour.model.dto.member.ProfileVO;

public interface ProfileService {
	
	public ProfileVO getProfile(int mpk);
	public void insertPrf(ProfileVO prf);

}
