package com.project.astour.service.calendar;

import java.util.List;

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

}
