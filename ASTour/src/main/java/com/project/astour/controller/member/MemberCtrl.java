package com.project.astour.controller.member;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("member")
public class MemberCtrl {
	
	private static final Logger logger = LoggerFactory.getLogger("MemberCtrl.class");
	
	// AST(CSW) : 로그인 체크 
	@RequestMapping("loginCheck.do")
	@ResponseBody
	public boolean login(@RequestParam String mid, @RequestParam String mpw) {
		logger.info("로그인 확인 컨트롤러 왔음~~~~~~~~~");
		logger.info("넘어온 아이디 : " + mid + ", 넘어온 pw : " + mpw);
		//아이디랑 비밀번호는 나중에 DB에서 가져와 확인해야 한다.
		// 아이디와 비밀번호가 일치하면  true 리턴
		if (mid.equals("abc@abc.com") && mpw.equals("1234"))
			return true;
		// 일치하지 않으면  false 리턴
		return false;
	}
	
	@RequestMapping("memberJoin.do")
	public String memberJoin() {
		return "member/joinMember";
	}

}
