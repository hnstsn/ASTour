package com.project.astour.model.dao.map;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.map.sigunVO;

@Repository
public class MapDAOImpl implements MapDAO{

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<attraction_tbl> attractionList() {
		return sqlSession.selectList("map.Info");
	}

	@Override
	public List<sigunVO> sigunList() {
		return sqlSession.selectList("map.sigun");
	}

	@Override
	public List<sigunVO> gunList(String name) {
		return sqlSession.selectList("map.gunList",name);
	}

	@Override
	public List<attraction_tbl> searchLocation(attraction_tbl vo) {
		return sqlSession.selectList("map.searchLocation", vo);
	}
	
	
	
}
