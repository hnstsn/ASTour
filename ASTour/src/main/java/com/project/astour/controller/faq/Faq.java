package com.project.astour.controller.faq;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.astour.model.dto.faq.faqVO;
import com.project.astour.service.faq.FaqService;

@Controller
public class Faq {
	
	@Inject
	FaqService faqService;
	
	@RequestMapping("faq.do")
	public String locaSelect(Model model) {
		
		List<faqVO> faqList = faqService.faqList();
		model.addAttribute("faqList", faqList);
		model.addAttribute("curPage", "faq/faqV.jsp"); 
		return "home";
		//home에서 curPage를 include
	}

}
