package com.project.astour.controller.blogcontent;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BlogContentController {
	
	@RequestMapping("contentview")
	public String BlogContent(Model model,
			@RequestParam(value="title") String title) {
			
		System.out.println(title);
		model.addAttribute("title", title);
		
		return "snsView/contentview";
		
	}
}
