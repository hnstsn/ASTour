package com.project.astour.model.dao.timeline;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;

@Repository
public class TimelineDAOImpl implements TimelineDAO{

	@Inject
	SqlSession sqlSession;

	//내용
	@Override
	public List<snsVO> contentView(int spk) {
		return sqlSession.selectList("sns.contentView",spk);

	}

	//파일
	@Override
	public List<SnsFileVO> contentViewFile(int spk) {
		return sqlSession.selectList("sns.contentViewFile",spk);
	}

	//뎃글추가
	@Override
	public void reply(SnsReplyVO vo) {
		sqlSession.insert("sns.addReply",vo);
	}

	@Override
	public List<SnsReplyVO> replyView(int spk) {
		return sqlSession.selectList("sns.replyView",spk);
	}

	// 조회수
	@Override
	public void hitsView(int spk) {
		sqlSession.update("sns.hitsView",spk);
	}

	@Override
	public SnsReplyVO count(int spk) {
		return sqlSession.selectOne("sns.replyCount",spk);
	}
	
		
}
