package com.project.astour.controller.reViewList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReViewList {

	@RequestMapping("reViewList")
	public String init(Model model,
			Reviewjava reviewjava){
		System.out.println(reviewjava.getReview_ATITLE());
		System.out.println(reviewjava.getReview_AIMAGE());
		
		//제목 ,이미지 이름 넘겨줌 
		model.addAttribute("title",reviewjava.getReview_ATITLE());
		model.addAttribute("image",reviewjava.getReview_AIMAGE());
		
		return "review/reviewListView";
	}
	
	
}
