package com.project.astour.model.dao.calendar;

import java.util.List;

import com.project.astour.model.dto.calendar.calendarVO;

public interface CalendarDAO {

	public List<calendarVO> calendarList(int mpk);
	public void calendarsize(int cpk,String startdate,String enddate,String ctitle);
}
