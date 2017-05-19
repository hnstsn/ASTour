package com.project.astour.controller.attraction;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.service.attraction.AttractionService;
import com.project.astour.service.details.DetailsSeration;

@Controller
public class AttractionController {

	@Inject
	AttractionService attractionService;
	@Inject
	DetailsSeration detailsSeration;

	@RequestMapping("initAttr")
	public String init(Model model) {
		List<attraction_tbl> attractionList = attractionService.attractionList();
		model.addAttribute("list", attractionList);
		return "attraction/joinattraction";
	}

	@RequestMapping("selectAttr")
	public String selectAttr(@RequestParam(value="loc") String loc,
			Model model){
		System.out.println(loc);
		List<attraction_tbl> attractionList = attractionService.attractionAtitle(loc);
		model.addAttribute("list", attractionList);
		return "attraction/joinattraction";
	}

	@RequestMapping("selectAsort")
	public String selectAsort(@RequestParam(value="loc") String loc,
			Model model){
		System.out.println(loc);
		List<attraction_tbl> attractionList = attractionService.attractionAsort(loc);
		model.addAttribute("list", attractionList);
		return "attraction/joinattraction";
	}

	//상세보기
	@RequestMapping("initDetails")
	public String init(Model model,
			@RequestParam(value="name") String ATITLE) {

		List<attraction_tbl> detailsList = detailsSeration.detailsList(ATITLE);
		model.addAttribute("list", detailsList);
		System.out.println(detailsList.get(0));
		return "attraction/detailsView";

	}

}