package com.project.astour.model.dao.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.member.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;

	// 아이디 중복 체크 함수
	@Override
	public int idCheck(String mid) {
		return sqlSession.selectOne("member.idCheck", mid);
	}

	// 회원가입
	@Override
	public void joinMember(MemberVO vo) {
		System.out.println("회원가입 dao");
		System.out.println(vo.getMid());
		System.out.println(vo.getMname());
		System.out.println(vo.getMphone());
		sqlSession.insert("member.joinMember", vo);
	}


}
