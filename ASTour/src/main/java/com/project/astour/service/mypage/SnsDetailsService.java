package com.project.astour.service.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.mypage.LikeVO;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsDetailsService {

	
	public snsVO contentView(@RequestParam(value="spk") int spk);
	public List<SnsFileVO> contentViewFile(int spk);
	public void contentDelete(snsVO sns);
	public void deletePic(int sfpk);
	public void deleteReplys(int spk);
	public void upContent(snsVO sns);
	
	
	public void reply(int mpk,int spk,String rcontent);
	//public List<SnsReplyVO> replyView(int spk);
	public void hitsView(int spk, HttpSession session); // 조회수
	public void likeinsert(int mpk, int spk); // 좋아요 추가
	public void likedelete(int mpk, int spk); // 좋아요 삭제
	public int likecount(int spk); // 좋아요 개수
	
	public LikeVO likeSelect(LikeVO vo);
	
	public SnsReplyVO count(int spk);
	public void delete(int rpk);
	
	public SnsReplyVO upselect(int rpk);
	public void replyupdate(SnsReplyVO vo);
	
	public List<SnsReplyVO> replyView(int start,int end,int spk);//댓글 보여주기
	public String replyViewFile(int mpK); //댓글 해당하는 사진 가지고오기 
	public String nameone(int spk); //상세보기 이름 하나 가지고오기 
}
