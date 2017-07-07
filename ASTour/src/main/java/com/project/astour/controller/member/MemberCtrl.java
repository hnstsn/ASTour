package com.project.astour.controller.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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
//	AST(CSW) : 회원가입, 아이디 체크, 중복체크 , 찾기 등등
	
	private static final Logger logger = LoggerFactory.getLogger("MemberCtrl.class");
	
	@Inject
	private MemberService mService;
	
	// AST(CSW) : 로그인 체크 
	@RequestMapping("loginCheck.do")
	@ResponseBody
	public int login(@ModelAttribute MemberVO vo, HttpSession session) {
		logger.info("로그인 확인 컨트롤러 왔음~~~~~~~~~");
		MemberVO member = mService.loginCheck(vo, session);
		int member_mpk = 0;
		if(member!=null){
		member_mpk = member.getMpk();
		}
		// member 객체가 존재하면 로그인에 성공했다는 것.
		// 객체가 존재하지 않으면 로그인에 실패했다는 것.
		return member_mpk;
	}
	
	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		mService.logout(session);
		return "redirect:/";
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
	
	// 회원가입
	@RequestMapping("memberJoin.do")
	public void memberJoin(@ModelAttribute MemberVO vo) {
		logger.info("회원가입 - memberJoin()");
		mService.joinMember(vo);
	}
	
	// 아이디 비밀번호 찾기
	@RequestMapping("searchIdPw.do")
	public String searchIdPw() {
		return "member/searchIdPw";
	}
	
	// 아이디 찾기
	@RequestMapping("getId.do")
	@ResponseBody
	public String getId(@RequestParam String mname, @RequestParam String mphone) {
		return mService.getId(mname, mphone);
	}
	
	// 비밀번호 찾기
	@RequestMapping("getPw.do")
	@ResponseBody
	public boolean getPw(@RequestParam String mid, @RequestParam String mname, @RequestParam String mphone) {
		logger.info("비밀번호 찾기!!");
		return mService.getPw(mid, mname, mphone);
	}
}
