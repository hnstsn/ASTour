package com.project.astour.model.dao.mypage;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsDetailsDAO {

	public snsVO contentView(@RequestParam(value="spk") int spk);
	public void contentDelete(int spk);
	public void deleteFiles(int spk);
	public void deleteReplys(int spk);
	public void deletePic(int sfpk);
	public void upContent(snsVO sns);
	public List<SnsFileVO> contentViewFile(int spk);
	public void reply(SnsReplyVO vo);
	
	public List<SnsReplyVO> replyView(int spk);
	public void hitsView(int spk);
	
	public SnsReplyVO count(int spk);
	public void delete(int rpk);
	
	public SnsReplyVO upselect(int rpk);
	public void replyupdate(SnsReplyVO vo);
	
}
