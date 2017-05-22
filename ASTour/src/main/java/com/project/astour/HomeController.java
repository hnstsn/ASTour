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
	
	// 관광명소 페이지 이동시 초기화면을 위한 service
	@Inject
	AttractionService attrService;
	// 마이 페이지 - Sns
	@Inject
	SnsService snsService;
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		logger.info("처음 main화면인 home.jsp 이동 Home Controller");
		model.addAttribute("curPage", "main.jsp");
		return "home";
	}
	
	@RequestMapping("/chgPage.do")
	public String chgPage(Model model,
			@RequestParam(defaultValue="0", value="cpage") int cpage) {
//		 메인 페이지 전환
		if (cpage == 0) {
			model.addAttribute("curPage", "main.jsp");
//		 지역선택 페이지 전환
		} else if (cpage == 10) {
			model.addAttribute("curPage", "map/locationSelectV.jsp");
		
//		추천명소 페이지 전환 
		} else if (cpage == 20) {
			List<attraction_tbl> attrList = attrService.attractionList();
			model.addAttribute("list", attrList);
			model.addAttribute("curPage", "attraction/joinattraction.jsp");
//		마이페이지 - SNS 페이지 전환
		} else if (cpage == 30) {
			List<tbl_snsVO> snsList = snsService.snsList();
			model.addAttribute("list", snsList);
			model.addAttribute("curPage", "snsView/sns.jsp");
//		마이페이지 - 정보수정 페이지 전환
		} else if (cpage == 40) {
			model.addAttribute("curPage", "map/locationSelectV.jsp");
//		고객선터 페이지 전환
		} else if (cpage == 50) {
			model.addAttribute("curPage", "faq/faqV.jsp");
		}
		return "home";
	}
	
}
