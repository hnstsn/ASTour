package com.project.astour.model.dao.timeline;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.sns.tbl_snsVO;

@Repository
public class TimelineDAOImpl implements TimelineDAO{

	@Inject
	SqlSession sqlSession;

	@Override
	public List<tbl_snsVO> timelineList(String rv_title) {
		return sqlSession.selectList("sns.timelineview",rv_title);

	}

		
}