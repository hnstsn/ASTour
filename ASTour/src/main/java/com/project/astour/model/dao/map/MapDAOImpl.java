package com.project.astour.model.dao.map;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.attraction.attraction_tbl;

@Repository
public class MapDAOImpl implements MapDAO{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<attraction_tbl> attractionList() {
		return sqlSession.selectList("map.Info");
	}
	
}
