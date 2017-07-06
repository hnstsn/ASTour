package com.project.astour.model.dao.android;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AndroidDAOImpl implements AndroidDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public void gpsRecord(String latitude_record, String longitude_record) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("latitude_record", latitude_record);
		map.put("longitude_record", longitude_record);
		
		sqlSession.insert("android.gpsRecord",map);
		
	}
	
}
