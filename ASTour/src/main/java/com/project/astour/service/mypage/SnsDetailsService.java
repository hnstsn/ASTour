package com.project.astour.service.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsDetailsService {

	
	public List<snsVO> contentView(@RequestParam(value="spk") int spk);
	public List<SnsFileVO> contentViewFile(int spk);
	public void reply(SnsReplyVO vo);
	public List<SnsReplyVO> replyView(int spk);
	public void hitsView(int spk, HttpSession session);
	
	public SnsReplyVO count(int spk);
	public void delete(int rpk);
}
