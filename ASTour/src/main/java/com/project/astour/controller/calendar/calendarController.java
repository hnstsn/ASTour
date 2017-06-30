package com.project.astour.controller.calendar;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.calendar.calendarVO;
import com.project.astour.service.calendar.CalendarService;

@Controller
@RequestMapping("calendar")
public class calendarController {
	
	@Inject
	CalendarService calendarservice;
	
	@RequestMapping("calendar.do")
	public String calendar(Model model,
			@RequestParam(value="mpk") int mpk){
		
		System.out.println("이상확인 : "+mpk);
		List<calendarVO> clist = calendarservice.calendarList(mpk);
		System.out.println("testestestsetset");
		for (calendarVO c : clist) {
			System.out.println("title : " + c.getCtitle() + ", start : " + c.getStartdate() + ", end : " + c.getEnddate());
			System.out.println();
		}
		model.addAttribute("clist",clist);
		model.addAttribute("curPage","calendar/calendarView.jsp");
		return "home";
	}
	
	
}
