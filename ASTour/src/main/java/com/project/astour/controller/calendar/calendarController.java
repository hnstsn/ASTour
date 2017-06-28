package com.project.astour.controller.calendar;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("calendar")
public class calendarController {
	
	@RequestMapping("calendar.do")
	public String calendar(Model model){
		model.addAttribute("curPage","calendar/calendarView.jsp");
		return "home";
	}
}
