package com.project.astour.controller.attraction;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.AttractionPager;
import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.service.attraction.AttractionService;
import com.project.astour.service.details.DetailsSeration;

@Controller
@RequestMapping("attraction")
public class AttractionController {

	@Inject
	AttractionService attractionService;

	@Inject
	DetailsSeration detailsSeration;

	@RequestMapping("initAttr.do")
	public String init(Model model,
			@RequestParam(defaultValue = "1") int curPage1) {

		int count=attractionService.attractionselectCount();
		AttractionPager pager = new AttractionPager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<attraction_tbl> attractionList = attractionService.attractionList2(start,end);
		model.addAttribute("pager",pager);
		model.addAttribute("controller","initAttr.do");
		model.addAttribute("list", attractionList);
		model.addAttribute("curPage", "attraction/joinattraction.jsp");
		return "home";
	}

	//검색
	@RequestMapping("selectAttr.do")
	public String selectAttr(@RequestParam(value="loc") String loc,
			@RequestParam(defaultValue = "1") int curPage1,Model model){

		int count=attractionService.attractionAtitleCount(loc);
		AttractionPager pager = new AttractionPager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<attraction_tbl> attractionList = attractionService.attractionAtitle(loc,start,end);
		model.addAttribute("list", attractionList);
		model.addAttribute("pager",pager);
		model.addAttribute("controller","selectAttr.do");
		model.addAttribute("loc",loc);
		model.addAttribute("curPage", "attraction/joinattraction.jsp");
		return "home";
	}

	//명소,행사검색
	@RequestMapping("selectAsort.do")
	public String selectAsort(@RequestParam(value="loc") String loc,
			@RequestParam(defaultValue = "1") int curPage1,
			Model model){
		System.out.println(loc);
		int count=attractionService.attractionASORTCount(loc);
		AttractionPager pager = new AttractionPager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		List<attraction_tbl> attractionList = attractionService.attractionAsort(loc,start,end);
 
		model.addAttribute("list", attractionList);
		model.addAttribute("pager",pager);
		model.addAttribute("controller","selectAsort.do");
		model.addAttribute("loc",loc);
		model.addAttribute("curPage", "attraction/joinattraction.jsp");
		return "home";
	}

	//상세보기
	@RequestMapping("initDetails.do")
	public String init(Model model,
			@RequestParam(value="name") String ATITLE) {
		List<attraction_tbl> detailsList = detailsSeration.detailsList(ATITLE);
		model.addAttribute("list", detailsList);
		model.addAttribute("curPage","attraction/detailsView.jsp");
		return "home";
	}

}