package com.project.astour.model.dao.mypage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;

@Repository
public class SnsDetailsDAOImpl implements SnsDetailsDAO{

	@Inject
	SqlSession sqlSession;

	// 상세보기
	@Override
	public snsVO contentView(int spk) {
		return sqlSession.selectOne("sns.contentView",spk);
	}
	
	// 해당 게시물 상세보기
	@Override
	public List<SnsFileVO> contentViewFile(int spk) {
		return sqlSession.selectList("sns.contentViewFile",spk);
	}

	// 게시글 삭제
	@Override
	public void contentDelete(int spk) {
		sqlSession.delete("sns.deleteContent", spk);
	}
	
	// 해당 게시글의 파일들 삭제
	@Override
	public void deleteFiles(int spk) {
		sqlSession.delete("sns.deleteFiles", spk);
	}
	
	// 해당 게시글의 댓글들 삭제
	
	@Override
	public void deleteReplys(int spk) {
		sqlSession.delete("sns.deleteReplys", spk);
	}
	
	// 게시글 수정때 삭제할 사진 파일 삭제
	@Override
	public void deletePic(int sfpk) {
		sqlSession.delete("sns.deletePic", sfpk);
	}
	
	// 게시글 수정
	@Override
	public void upContent(snsVO sns) {
		sqlSession.update("sns.upContent", sns);
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
	
	//댓글삭제
	@Override
	public void delete(int rpk) {
		sqlSession.delete("sns.replydelete",rpk);
	}
	
	//댓글 수정을 위한 정보가지고오기 
	@Override
	public SnsReplyVO upselect(int rpk) {
		return sqlSession.selectOne("sns.replyselect",rpk);
	}

	//댓글업데이트
	@Override
	public void replyupdate(SnsReplyVO vo) {
		sqlSession.update("sns.replyupdate",vo);
	}

}
