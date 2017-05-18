package com.project.astour.controller.attraction;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.service.attraction.AttractionService;

@Controller
public class AttractionController {

	@Inject
	AttractionService attractionService;
	
	@RequestMapping("initAttr")
	public String init(Model model) {
		List<attraction_tbl> attractionList = attractionService.attractionList();
		model.addAttribute("list", attractionList);
		return "attraction/joinattraction";
	}
	
}