package com.project.astour.model.dao.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;

	// 아이디 중복 체크 함수
	@Override
	public int idCheck(String mid) {
		return sqlSession.selectOne("member.idCheck", mid);
	}

}
