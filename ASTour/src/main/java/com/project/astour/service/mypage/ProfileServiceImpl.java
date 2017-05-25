package com.project.astour.service.mypage;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.mypage.ProfileDAO;
import com.project.astour.model.dto.member.ProfileVO;

@Service
public class ProfileServiceImpl implements ProfileService {
	
	@Inject
	ProfileDAO pDao;

	// 프로필 정보 가져오기 - mpk로 가져오는 것은 여러개이다.
	// 그 중 가장 최신 것으로 가져와서 보여줘야 한다.
	@Override
	public ProfileVO getProfile(int mpk) {
		List<ProfileVO> list = pDao.getProfile(mpk);
		if (list.size() == 0)
			return null;
		return list.get(0);
	}

	@Override
	public void insertPrf(ProfileVO prf) {
		pDao.insertPrf(prf);
	}

}
