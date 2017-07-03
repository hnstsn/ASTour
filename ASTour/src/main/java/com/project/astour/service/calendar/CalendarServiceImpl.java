package com.project.astour.service.calendar;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.calendar.CalendarDAO;
import com.project.astour.model.dto.calendar.calendarVO;

@Service
public class CalendarServiceImpl implements CalendarService{

	@Inject
	CalendarDAO calendardao;
	
	@Override
	public List<calendarVO> calendarList(int mpk) {
		return calendardao.calendarList(mpk);
	}

	//캘린더 일정, 사이즈 이벤트
	@Override
	public void calendarsize(int cpk,String startdate,String enddate,String ctitle) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cpk", cpk);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		map.put("ctitle", ctitle);
		
		calendardao.calendarsize(map);
	}

	//캘린더 일정 추가
	@Override
	public void calendarInsert(int mpk, String startdate, String enddate, String ctitle) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mpk", mpk);
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		map.put("ctitle", ctitle);
		
		calendardao.calendarInsert(map);
	}

	//캘린더 삭제
	@Override
	public void calendarDelete(int cpk) {
		calendardao.calendarDelete(cpk);
	}
	
	
	

}
