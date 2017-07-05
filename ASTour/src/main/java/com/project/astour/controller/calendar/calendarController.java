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
	
	//일정 리스트 가지고옴
	@RequestMapping("selelctList")
	@ResponseBody
	public List<calendarVO> selelctList(@RequestParam(value="mpk") int mpk){	
		return calendarservice.calendarList(mpk);
	}
	
	//사이즈 변경 컨트롤,Drop 컨트롤
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
	
	//일정 추가
	@RequestMapping("insert")
	public String insert(@RequestParam(value="mpk") int mpk,
			@RequestParam(value="data_1") String ctitle,
			@RequestParam(value="data_2") String startdate,
			@RequestParam(value="data_3") String enddate){
		
		calendarservice.calendarInsert(mpk, startdate, enddate, ctitle);
		
		return "redirect:/calendar/calendar.do?mpk="+mpk;
	}
	
	//일정 수정
	@RequestMapping("update")
	public String up(@RequestParam(value="updata_2") String startdate,
			@RequestParam(value="updata_3") String enddate,
			@RequestParam(value="updata_1") String ctitle,
			@RequestParam(value="cpk") int cpk,
			@RequestParam(value="mpk") int mpk){
		
		calendarservice.calendarsize(cpk, startdate, enddate, ctitle);
		
		return "redirect:/calendar/calendar.do?mpk="+mpk;
	}
	
	//일정 삭제
	@RequestMapping("cal_delete")
	public String cal_delete(@RequestParam(value="mpk") int mpk,
			@RequestParam(value="cpk") int cpk){
		calendarservice.calendarDelete(cpk);
		return "redirect:/calendar/calendar.do?mpk="+mpk;
	}
	
	
}
