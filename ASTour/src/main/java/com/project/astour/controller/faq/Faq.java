package com.project.astour.controller.faq;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Faq {
	
	
	@RequestMapping("faq")
	public String locaSelect(Model model) {
		model.addAttribute("curPage", "faq/faqV.jsp"); 
		return "home";
		//home에서 curPage를 include
	}

}
