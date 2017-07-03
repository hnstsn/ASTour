package com.project.astour.model.dao.calendar;

import java.util.List;
import java.util.Map;

import com.project.astour.model.dto.calendar.calendarVO;

public interface CalendarDAO {

	public List<calendarVO> calendarList(int mpk);
	//켈린더 사이즈 변경,이동시 
	public void calendarsize(Map<String, Object> map);
	//켈린더 추가
	public void calendarInsert(Map<String, Object> map);
	//켈린더 삭제
	public void calendarDelete(int cpk);
}
