
package com.project.astour.model.dao.mypage;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.mypage.LikeVO;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsDetailsDAO {

	public snsVO contentView(@RequestParam(value="spk") int spk);//해당게시물 정보
	public void contentDelete(int spk); //게시물 삭제
	public void deleteFiles(int spk);	
	public void deleteReplys(int spk);
	public void deletePic(int sfpk);
	public void upContent(snsVO sns);
	public List<SnsFileVO> contentViewFile(int spk);
	
	//댓글 추가
	public void reply(int mpk,int spk,String rcontent);
	
	//public List<SnsReplyVO> replyView(int spk);
	public void hitsView(int spk); // 조회수
	public void likeinsert(int mpk, int spk); // 좋아요 추가
	public void likedelete(int mpk, int spk); // 좋아요 삭제
	public int likecount(int spk);
	
	public LikeVO likeSelect(LikeVO vo);
	
	
	public SnsReplyVO count(int spk);
	public void delete(int rpk);
	
	public SnsReplyVO upselect(int rpk);
	public void replyupdate(SnsReplyVO vo);
	
	//댓글 리스트 가지고오기 사진제외
	public List<SnsReplyVO> replyView(int start,int end,int spk); // 댓글 10개만 뽑아오기
	//댓글 리스트 해당하는 사진 가지고오기
	public String replyViewFile(int mpk);
	
	public String nameone(int spk);//상세보기에 이름 하나만 가지고오기 
}
