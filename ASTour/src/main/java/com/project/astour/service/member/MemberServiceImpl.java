package com.project.astour.service.member;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.member.MemberDAO;
import com.project.astour.model.dto.member.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberDAO mdao;

	// 아이디 중복 체크 함수 - 사용가능한 아이디면 true 중복되는 아이디면  false return
	// 사용가능한 아이디면 mdao.idCheck에서 넘어오는 값이 0이다.(존재하지 않기 때문에)
	// 0이 아닌 다른 수가 넘어오면 존재한다는 의미이기 때문에  false
	@Override
	public boolean idCheck(String mid) {
		return (mdao.idCheck(mid) == 0) ? true : false;
	}

	@Override
	public void joinMember(MemberVO vo) {
		System.out.println("회원가입 서비스");
		mdao.joinMember(vo);
	}

}
