package com.project.astour.model.dao.mypage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.member.ProfileVO;

@Repository
public class ProfileDAOImpl implements ProfileDAO {

	@Inject
	SqlSession sqlSession;
	
	// 프로필 가져오기
	@Override
	public List<ProfileVO> getProfile(int mpk) {
		return sqlSession.selectList("member.getProfile", mpk);
	}

	// 프로필 사진 넣기
	@Override
	public void insertPrf(ProfileVO prf) {
		sqlSession.insert("member.insertPrf", prf);
	}

}
