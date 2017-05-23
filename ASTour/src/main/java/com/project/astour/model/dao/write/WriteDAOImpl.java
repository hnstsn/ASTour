package com.project.astour.model.dao.write;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.mypage.snsVO;

@Repository
public class WriteDAOImpl implements WriteDAO{
	
	@Inject
	private SqlSession sqlsession;	

	@Override
	public void insertcontent(snsVO vo) {
		sqlsession.insert("sns.insertcontent", vo);
	}
	
}
