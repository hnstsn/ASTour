package com.project.astour.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member")
public class MemberCtrl {
	
	@RequestMapping("login.do")
	public String login() {
		return "";
	}

}
