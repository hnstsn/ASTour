package com.project.astour.controller.reViewList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReViewList {

	@RequestMapping("reViewList")
	public String init(Model model,
			Reviewjava reviewjava){

		//제목 ,이미지 이름 넘겨줌 
		model.addAttribute("title",reviewjava.getReview_ATITLE());
		model.addAttribute("image",reviewjava.getReview_AIMAGE());
		model.addAttribute("curPage","review/reviewListView.jsp");
		
		return "home";
	}
}
