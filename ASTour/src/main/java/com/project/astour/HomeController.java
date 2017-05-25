package com.project.astour;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.member.MemberVO;

/**
 * Handles requests for the application home page.
 */
//수정해야함
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		logger.info("처음 main화면인 home.jsp 이동 Home Controller");
		model.addAttribute("curPage", "main.jsp");
		return "home";
	}
	
	@RequestMapping("/chgPage.do")
	public String chgPage(Model model, @RequestParam int cpage, HttpSession session) {
//		 지역선택 페이지 전환
		if (cpage == 10)
			return "redirect:/locationSelect";
//		추천명소 페이지 전환 
		else if (cpage == 20)
			return "redirect:/attraction/initAttr.do";
//		마이페이지 - SNS 페이지 전환
		else if (cpage == 30) {
			MemberVO member = (MemberVO) session.getAttribute("member");
			int mpk = member.getMpk();
			return "redirect:/sns/initSns.do?mpk="+mpk;
//		마이페이지 - 정보수정 페이지 전환
		} else if (cpage == 40) {
//			회원정보 수정 페이지로 이동하는데 로그인한 사람의 정보를 넘겨주기 위해 세션에서 값을 받는다.
			MemberVO member = (MemberVO) session.getAttribute("member");
			int mpk = member.getMpk();
			return "redirect:/modify/getPriInfo.do?mpk=" + mpk;
//		고객선터 페이지 전환
		} else if (cpage == 50)
			return "redirect:/faq";
//		기본 main로
		return "redirect:/";
	}
	
}
