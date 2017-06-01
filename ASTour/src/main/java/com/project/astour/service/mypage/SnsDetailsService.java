package com.project.astour.service.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestParam;

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
	public void reply(SnsReplyVO vo);
	//public List<SnsReplyVO> replyView(int spk);
	public void hitsView(int spk, HttpSession session);
	
	public SnsReplyVO count(int spk);
	public void delete(int rpk);
	
	public SnsReplyVO upselect(int rpk);
	public void replyupdate(SnsReplyVO vo);
	
	public List<SnsReplyVO> replyView(int start,int end,int spk);//댓글 보여주기
	public String nameone(int spk); //상세보기 이름 하나 가지고오기 
}
