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

	// 캘린더 사이즈,이동 조정
	@Override
	public void calendarsize(Map<String, Object> map) {
		sqlsession.update("calendar.calendarsize",map);
	}

	//캘린더 추가
	@Override
	public void calendarInsert(Map<String, Object> map) {
		sqlsession.insert("calendar.calendarInsert",map);
	}

	//캘린더 삭제
	@Override
	public void calendarDelete(int cpk) {
		sqlsession.delete("calendar.calendarDelete",cpk);
	}
	

}
