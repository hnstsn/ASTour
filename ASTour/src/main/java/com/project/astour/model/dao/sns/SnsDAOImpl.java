package com.project.astour.model.dao.sns;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.sns.tbl_snsVO;

@Repository
public class SnsDAOImpl implements SnsDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<tbl_snsVO> snsList() {
		return sqlSession.selectList("sns.snsList"); 
	}
}
