package com.project.astour.service.calendar;

import java.util.List;

import com.project.astour.model.dto.calendar.calendarVO;

public interface CalendarService {

	public List<calendarVO> calendarList(int mpk);
	
	//캘린더 사이즈 , 이동 이벤트
	public void calendarsize(int cpk,String startdate,String enddate,String ctitle);
	
	//캘린더 추가
	public void calendarInsert(int mpk,String startdate,String enddate,String ctitle);
	
	//캘린더 삭제
	public void calendarDelete(int cpk);
}
