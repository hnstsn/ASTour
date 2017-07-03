package com.project.astour.controller.calendar;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

		model.addAttribute("curPage","calendar/calendarView.jsp");
		return "home";
	}
	
	@RequestMapping("selelctList")
	@ResponseBody
	public List<calendarVO> selelctList(@RequestParam(value="mpk") int mpk){	
		return calendarservice.calendarList(mpk);
	}
	
	@RequestMapping("calendarSize")
	@ResponseBody
	public void calendarSize(@RequestParam(value="startdate") String startdate,
			@RequestParam(value="enddate") String enddate,
			@RequestParam(value="ctitle") String ctitle,
			@RequestParam(value="id") int cpk){
		System.out.println("calendarSize 접속완료");
		System.out.println(cpk);
		System.out.println(startdate);
		System.out.println(enddate);
		System.out.println(ctitle);
		
		calendarservice.calendarsize(cpk, startdate, enddate, ctitle);
	}
	
	@RequestMapping("calendarDrop")
	@ResponseBody
	public void calendarDrop(@RequestParam(value="startdate") String startdate,
			@RequestParam(value="enddate") String enddate,
			@RequestParam(value="ctitle") String ctitle,
			@RequestParam(value="id") int cpk){
		
		System.out.println("calendarDrop 접속완료");
		System.out.println(cpk);
		System.out.println(startdate);
		System.out.println(enddate);
		System.out.println(ctitle);
		
		
	}
}
