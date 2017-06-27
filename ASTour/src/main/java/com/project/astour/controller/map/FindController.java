package com.project.astour.controller.map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FindController {
	
	@RequestMapping("find")
	public String findf1(Model model,
			@RequestParam(value="tt") Double tt,
			@RequestParam(value="tt2")Double tt2){
		
		System.out.println("확인접속");
		System.out.println(tt);
		System.out.println(tt2);
		
		model.addAttribute("curPage", "map/findView.jsp");
		return "home";
	}
}
