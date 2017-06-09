package com.project.astour.model.dao.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public void reply(int mpk,int spk,String rcontent) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mpk", mpk);
		map.put("spk", spk);
		map.put("rcontent", rcontent);
		sqlSession.insert("sns.addReply",map);
	}

	/*@Override
	public List<SnsReplyVO> replyView(int spk) {
		return sqlSession.selectList("sns.replyView",spk);
	}
*/
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

	//댓글보여주기
	@Override
	public List<SnsReplyVO> replyView(int start,int end,int spk){
		Map<String, Object> map= new HashMap<String, Object>();
		map.put("start",start);
		map.put("end",end);
		map.put("spk",spk);
		return sqlSession.selectList("sns.replyView",map);
	}
	//댓글 해당하는 사진 가지고오기
	@Override
	public String replyViewFile(int mpk) {
		return sqlSession.selectOne("sns.replyViewFile",mpk);
	}

	//상세보기에 이름가지고오기 
	@Override
	public String nameone(int spk) {
		return sqlSession.selectOne("sns.nameone",spk);
	}

	
	
}
