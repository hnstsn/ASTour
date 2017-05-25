package com.project.astour.model.dao.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.member.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;

	// 로그인 체크
	@Override
	public MemberVO loginCheck(MemberVO vo) {
		return sqlSession.selectOne("member.loginCheck", vo);
	}
	
	// 아이디 중복 체크 함수
	@Override
	public int idCheck(String mid) {
		return sqlSession.selectOne("member.idCheck", mid);
	}

	// 회원가입
	@Override
	public void joinMember(MemberVO vo) {
		sqlSession.insert("member.joinMember", vo);
	}
	
	// 개인정보 가져오기
	public MemberVO getInfo(int mpk) {
		return sqlSession.selectOne("member.getInfo", mpk);
	}

	@Override
	public void modifyInfo(MemberVO vo) {
		sqlSession.update("member.modifyInfo", vo);
	}

}
