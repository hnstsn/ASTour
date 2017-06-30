package com.project.astour.model.dao.calendar;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.calendar.calendarVO;

@Repository
public class CalendarDAOImpl implements CalendarDAO{

	@Inject
	SqlSession sqlsession;
	
	@Override
	public List<calendarVO> calendarList(int mpk) {
		return sqlsession.selectList("calendar.calendarselect",mpk);
	}
	

}
