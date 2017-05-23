package com.project.astour.model.dao.timeline;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.mypage.snsVO;

@Repository
public class TimelineDAOImpl implements TimelineDAO{

	@Inject
	SqlSession sqlSession;

	@Override
	public List<snsVO> contentView(int spk) {
		return sqlSession.selectList("sns.contentview",spk);

	}

		
}
