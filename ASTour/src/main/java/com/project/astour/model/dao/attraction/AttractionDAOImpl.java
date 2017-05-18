package com.project.astour.model.dao.attraction;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.project.astour.model.dto.attraction.attraction_tbl;

@Repository
public class AttractionDAOImpl implements AttractionDAO{
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<attraction_tbl> attractionList() {
		return sqlSession.selectList("attractionmap.attractionselect"); 
	}

}
