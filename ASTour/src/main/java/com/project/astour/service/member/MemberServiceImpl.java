package com.project.astour.service.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.member.MemberDAO;
import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.service.email.EmailService;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberDAO mdao;
	
	@Inject
	private EmailService eService;
	
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

	// 정보수정을 보여주기 위해 정보 가져오기
	@Override
	public MemberVO getInfo(int mpk) {
		return mdao.getInfo(mpk);
	}

	// 정보 수정
	@Override
	public void modifyInfo(MemberVO vo) {
		mdao.modifyInfo(vo);
	}

	// 아이디 찾기
	@Override
	public String getId(String mname, String mphone) {
		String mid = mdao.getId(mname, mphone);
		// 아이디를 찾았으면 아이디를 return 
		// 못 찾았으면 false를 리턴
		return (mid != null) ? mid : "false";
	}

	// 비밀번호 찾기
	@Override
	public boolean getPw(String mid, String mname, String mphone) {
		String mpw = mdao.getPw(mid, mname, mphone);
		// 비밀번호를 찾았으면
		if (mpw != null) {
			// 비밀번호를 이메일로 보내준다
			eService.sendPw(mid, mpw);
			return true;
		}
		return false;
	}

}
