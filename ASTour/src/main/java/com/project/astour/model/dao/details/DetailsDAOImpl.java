package com.project.astour.model.dao.details;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;

@Repository
public class DetailsDAOImpl implements DetailsDAO{
	
	@Inject
	SqlSession sqlSession;

	@Override
	public List<attraction_tbl> detailsList(@RequestParam(value="ATITLE") String ATITLE) {
		return sqlSession.selectList("attractionmap.detailsselect",ATITLE);
	}
}
