package com.project.astour;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.sns.tbl_snsVO;
import com.project.astour.service.attraction.AttractionService;
import com.project.astour.service.sns.SnsService;

/**
 * Handles requests for the application home page.
 */
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
	public String chgPage(Model model, @RequestParam int cpage) {
//		 지역선택 페이지 전환
		if (cpage == 10)
			return "redirect:/locationSelect";
//		추천명소 페이지 전환 
		else if (cpage == 20)
			return "redirect:/initAttr";
//		마이페이지 - SNS 페이지 전환
		else if (cpage == 30)
			return "redirect:/sns/initSns.do";
//		마이페이지 - 정보수정 페이지 전환
		else if (cpage == 40)
			return "redirect:/";
//		고객선터 페이지 전환
		else if (cpage == 50)
			return "redirect:/faq";
//		기본 main로
		return "redirect:/";
	}
	
}
