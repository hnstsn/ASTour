package com.project.astour;

import java.util.Collections;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.attraction.tagrankVO;
import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.snsVO;
import com.project.astour.service.attraction.AttractionService;
import com.project.astour.service.mypage.SnsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
//	AST(CSW) : 초기 페이지와 메뉴 탭 이동
	
	@Inject
	SnsService snsService;
	
	@Inject
	AttractionService attractionservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
//	@RequestMapping(value = "/")
//	public String home(Model model) {
//		logger.info("처음 main화면인 home.jsp 이동 Home Controller");
//		model.addAttribute("curPage", "main.jsp");
//		return "home";
//	}
	

	@RequestMapping(value = "/")
	public String home(Model model,
			HttpSession session) {
		logger.info("처음 main화면인 home.jsp 이동 Home Controller");
		
		List<snsVO> rankList = snsService.rankList();
		List<tagrankVO> tagrank = attractionservice.tagrank();
		List<attraction_tbl> attracionList=attractionservice.attractionList();
		
		//해당하는 사진 하나만 가지고 오기 위함
		for(snsVO vo: rankList){
			String sffile=snsService.rankListfile(vo.getSpk());
			if(sffile!=null){
				vo.setSffile(sffile);
			}else{
				sffile = snsService.noimage(vo.getStag());
				vo.setSffile(sffile);
			}
		}
		MemberVO member = (MemberVO)session.getAttribute("member");	
		
		
		//랜덤으로 순선 정함
		Collections.shuffle(attracionList);
		model.addAttribute("list",attracionList);
		model.addAttribute("rankList",rankList);
		model.addAttribute("tagrank", tagrank);
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
//			로그인 하지 않았다면(세션이 없다면)
			if (member == null)
				return "include/sessionCheck";
			int mpk = member.getMpk();
			return "redirect:/sns/initSns.do?mpk="+mpk;
//		마이페이지 - 정보수정 페이지 전환
		} else if (cpage == 40) {
//			회원정보 수정 페이지로 이동하는데 로그인한 사람의 정보를 넘겨주기 위해 세션에서 값을 받는다.
			MemberVO member = (MemberVO) session.getAttribute("member");
//			로그인 하지 않았다면(세션이 없다면)
			if (member == null) 
				return "include/sessionCheck";
			int mpk = member.getMpk();
			return "redirect:/modify/getPriInfo.do?mpk=" + mpk;
//		고객선터 페이지 전환
		} else if (cpage == 50){
			return "redirect:/faq.do";
		//일정가기 패이지 
		}else if(cpage == 60){
//			회원정보 수정 페이지로 이동하는데 로그인한 사람의 정보를 넘겨주기 위해 세션에서 값을 받는다.
			MemberVO member = (MemberVO) session.getAttribute("member");
//			로그인 하지 않았다면(세션이 없다면)
//			로그인 하지 않았다면(세션이 없다면)
			if (member == null) 
				return "include/sessionCheck";
			int mpk = member.getMpk();
			return "redirect:/calendar/calendar.do?mpk="+mpk;
		}
//		기본 main로
		return "redirect:/";
	}
	
}
