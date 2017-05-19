package com.project.astour.controller.member;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.service.member.MemberService;

@Controller
@RequestMapping("member")
public class MemberCtrl {
	
	private static final Logger logger = LoggerFactory.getLogger("MemberCtrl.class");
	
	@Inject
	private MemberService mService;
	
	// AST(CSW) : 로그인 체크 
	@RequestMapping("loginCheck.do")
	@ResponseBody
	public boolean login(@RequestParam String mid, @RequestParam String mpw) {
		logger.info("로그인 확인 컨트롤러 왔음~~~~~~~~~");
		logger.info("넘어온 아이디 : " + mid + ", 넘어온 pw : " + mpw);
		// 아이디와 비밀번호는 나중에 DB에서 가져와 확인해야 한다.
		// 아이디와 비밀번호가 일치하면  true 리턴
		if (mid.equals("abc@abc.com") && mpw.equals("1234"))
			return true;
		// 일치하지 않으면  false 리턴
		return false;
	}
	
	// 아이디 중복 체크
	@RequestMapping("idCheck.do")
	@ResponseBody
	public boolean idCheck(String mid) {
		logger.info("아이디 중복 체크");
		logger.info("넘어온 아이디 : " + mid);
		logger.info("아이디 중복 체크 결과 : " + mService.idCheck(mid));
		return mService.idCheck(mid);
	}
	
	// 회원가입 창 띄워주기
	@RequestMapping("insertJoin.do")
	public String insertJoin() {
		return "member/joinMember";
	}
	
	@RequestMapping("memberJoin.do")
	public void memberJoin(@ModelAttribute MemberVO vo) {
		logger.info("회원가입 - memberJoin()");
		System.out.println(vo.getMid());
		System.out.println(vo.getMname());
		System.out.println(vo.getMphone());
		mService.joinMember(vo);
	}

}
