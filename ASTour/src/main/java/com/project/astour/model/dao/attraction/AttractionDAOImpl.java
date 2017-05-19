package com.project.astour.model.dao.attraction;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;

@Repository
public class AttractionDAOImpl implements AttractionDAO{
	
	@Inject
	SqlSession sqlSession;
	
	//전부
	@Override
	public List<attraction_tbl> attractionList() {
		return sqlSession.selectList("attractionmap.attractionselect"); 
	}
	
	//검색
	@Override
	public List<attraction_tbl> attractionAtitle(
			@RequestParam(value="ATITLE") String ATITLE){
		return sqlSession.selectList("attractionmap.attractionATITLE",ATITLE);
	}
	
	//행사,명소 구별
	public List<attraction_tbl> attractionAsort(
			@RequestParam(value="ASORT") String ASORT){
		return sqlSession.selectList("attractionmap.attractionASORT",ASORT);
	}

}
