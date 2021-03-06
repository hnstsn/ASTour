package com.project.astour.service.mypage;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.astour.model.dao.mypage.SnsDetailsDAO;
import com.project.astour.model.dto.mypage.LikeVO;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;

@Service
public class SnsDetailsServiceImpl implements SnsDetailsService{

	@Inject
	SnsDetailsDAO snsDetailsDao;
	
	// 게시물 상세보기
	@Override
	public snsVO contentView(int spk) {
		return snsDetailsDao.contentView(spk);
	}

	// 해당 게시물의 파일 가져오기
	@Override
	public List<SnsFileVO> contentViewFile(int spk) {
		return snsDetailsDao.contentViewFile(spk);
	}
	
	// 게시글 삭제할때 해당 게시물의 파일들 다 삭제
	@Transactional
	@Override
	public void contentDelete(snsVO sns) {
		// 해당 게시물의 파일 삭제 - 없으면 그냥 건너뛴다
		snsDetailsDao.deleteFiles(sns.getSpk());
		// 해당 게시물의 댓글 다 삭제
		snsDetailsDao.likedelete(sns.getMpk(), sns.getSpk());
		// 해당 게시글 삭제
		snsDetailsDao.contentDelete(sns.getSpk());
	}
	
	// 게시물 수정때 삭제할 사진 삭제
	@Override
	public void deletePic(int sfpk) {
		snsDetailsDao.deletePic(sfpk);
	}
	
	// 게시글 삭제할 때 댓글들 다 삭제
	@Override
	public void deleteReplys(int spk) {
		snsDetailsDao.deleteReplys(spk);
	}
	
	// 게시글 수정
	@Override
	public void upContent(snsVO sns) {
		snsDetailsDao.upContent(sns);
	}
		
	@Override
	public void reply(int mpk,int spk,String rcontent) {
		snsDetailsDao.reply(mpk,spk,rcontent);
	}

	/*@Override
	public List<SnsReplyVO> replyView(int spk) {
		return snsDetailsDao.replyView(spk);
	}*/
	
	// 조회수
	@Override
	public void hitsView(int spk, HttpSession session) {
		long update_time=0;
		// 세션에 저장된 조회시간 검색
		if(session.getAttribute("update_time_"+spk)!=null){
			update_time = (Long) session.getAttribute("update_time_"+spk);
			
		}
		// 시스템의 현재 시간
		long current_time = System.currentTimeMillis();
		// 일정 시간이 경과 후 조회수 증가 처리
		if(current_time - update_time > 5*1000){
			snsDetailsDao.hitsView(spk);
			session.setAttribute("update_time_"+spk, current_time);
		}
	}

	@Override
	public SnsReplyVO count(int spk) {
		return snsDetailsDao.count(spk);
	}
	
	@Override
	public void delete(int rpk) {
		snsDetailsDao.delete(rpk);
	}
	
	@Override
	public SnsReplyVO upselect(int rpk) {
		return snsDetailsDao.upselect(rpk);
	}

	@Override
	public void replyupdate(SnsReplyVO vo) {
		snsDetailsDao.replyupdate(vo);
	}
	
	//댓글 보기
	@Override
	public List<SnsReplyVO> replyView(int start,int end,int spk){
		return snsDetailsDao.replyView(start, end,spk);
	}
	
	//댓글 쓴사람 사진 가지고오기
	@Override
	public String replyViewFile(int mpk) {
		return snsDetailsDao.replyViewFile(mpk);
	}
	
	//상세보기 이름 하나 가지고오기
	@Override
	public String nameone(int spk) {
		return snsDetailsDao.nameone(spk);
	}

	@Override
	public void likeinsert(int mpk, int spk) {
		snsDetailsDao.likeinsert(mpk, spk);
	}

	@Override
	public LikeVO likeSelect(LikeVO vo) {
		return snsDetailsDao.likeSelect(vo);
	}

	@Override
	public void likedelete(int mpk, int spk) {
		snsDetailsDao.likedelete(mpk,spk);
	}

	@Override
	public int likecount(int spk) {
		System.out.println("spk!! : " + spk + " - " + snsDetailsDao.likecount(spk));
		return snsDetailsDao.likecount(spk);
	}
	
}