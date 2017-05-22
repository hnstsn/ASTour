package com.project.astour.service.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.member.MemberDAO;
import com.project.astour.model.dto.member.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberDAO mdao;
	
	// 로그인 체크
	@Override
	public MemberVO loginCheck(MemberVO vo, HttpSession session) {
		MemberVO member = mdao.loginCheck(vo);
		// member 객체가 존재하면  로그인 성공했다는 것.
		// 존재하지 않으면 로그인에 실패했다는 것.(null 리턴)
		if (member != null)
			session.setAttribute("member", member);
		return member;
	}
	
	// 로그아웃
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
	

	// 아이디 중복 체크 함수 - 사용가능한 아이디면 true 중복되는 아이디면  false return
	// 사용가능한 아이디면 mdao.idCheck에서 넘어오는 값이 0이다.(존재하지 않기 때문에)
	// 0이 아닌 다른 수가 넘어오면 존재한다는 의미이기 때문에  false
	@Override
	public boolean idCheck(String mid) {
		return (mdao.idCheck(mid) == 0) ? true : false;
	}

	// 회원가입
	@Override
	public void joinMember(MemberVO vo) {
		mdao.joinMember(vo);
	}

}
