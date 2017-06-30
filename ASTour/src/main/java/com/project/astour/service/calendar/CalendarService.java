package com.project.astour.service.calendar;

import java.util.List;

import com.project.astour.model.dto.calendar.calendarVO;

public interface CalendarService {

	public List<calendarVO> calendarList(int mpk);
}
