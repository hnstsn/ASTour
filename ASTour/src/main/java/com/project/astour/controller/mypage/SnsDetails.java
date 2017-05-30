package com.project.astour.controller.mypage;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;
import com.project.astour.service.timeline.TimelineService;

@Controller
@RequestMapping("snsdetails")
public class SnsDetails {
	@Inject
	TimelineService timelineService;

	int mp=0;
	//상세보기
	@RequestMapping("contentview.do")
	public String BlogContent(Model model,
			@RequestParam(value="spk") int spk,
			@RequestParam(value="mpk") int mpk,
			@RequestParam(value="mmpk") int mmpk,
			@RequestParam(value="name") String name,
			HttpSession session) {
		mp=mmpk;
		
		timelineService.hitsView(spk,session);//조횟수
		List<snsVO> contentView = timelineService.contentView(spk);
		List<SnsFileVO> contentViewFile = timelineService.contentViewFile(spk);
		List<SnsReplyVO> replyView = timelineService.replyView(spk);
		SnsReplyVO ct = timelineService.count(spk);
		
		if(ct.getCt()/2!=0){
			model.addAttribute("ct",ct.getCt()/10+1);			
		}else{
			model.addAttribute("ct",ct.getCt()/10);
		}
		model.addAttribute("replyView",replyView);
		model.addAttribute("fileList",contentViewFile);
		model.addAttribute("contenlist", contentView);
		model.addAttribute("name",name);
		model.addAttribute("mpk",mpk);
		model.addAttribute("mmpk",mp);
		model.addAttribute("curPage", "snsView/contentview.jsp");
		return "home";
	}
	
	//추가
	@RequestMapping("in.do")
	public String PostContent(Model model,@RequestParam(value="name") String name,
			SnsReplyVO vo){
		
		timelineService.reply(vo);
		List<snsVO> contentView = timelineService.contentView(vo.getSpk());
		List<SnsFileVO> contentViewFile = timelineService.contentViewFile(vo.getSpk());
		List<SnsReplyVO> replyView = timelineService.replyView(vo.getSpk());
		
		model.addAttribute("replyView",replyView);
		model.addAttribute("fileList",contentViewFile);
		model.addAttribute("contenlist", contentView);
		model.addAttribute("name",name);
		model.addAttribute("mpk",vo.getMpk());
		model.addAttribute("mmpk",mp);
		model.addAttribute("curPage", "snsView/contentview.jsp");
		return "home";
	}
	
	//뎃글삭제
	@RequestMapping("delete.do")
	public String delete(Model model,
			@RequestParam(value="rpk") int spk){

		System.out.println(spk);
		System.out.println("접속했다1");
		model.addAttribute("mmpk",mp);
		model.addAttribute("curPage", "snsView/contentview.jsp");
		return "home";
	}

}
