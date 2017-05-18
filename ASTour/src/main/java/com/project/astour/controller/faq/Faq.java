package com.project.astour.controller.faq;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Faq {
	
	
	
	
	@RequestMapping("faq")
	public String locaSelect() {
		System.out.println("리퀘스트 매핑FAQ");
		return "faq/faqV";
	}

}
