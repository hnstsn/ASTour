package com.project.astour.model.dao.calendar;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	// 캘린더 사이즈 조정
	@Override
	public void calendarsize(int cpk,String startdate,String enddate,String ctitle) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("startdate", startdate);
		map.put("endddate", enddate);
		map.put("ctitle", ctitle);
		map.put("cpk", cpk);
		
		sqlsession.update("calendar.calendarsize",map);
	}
	

}
