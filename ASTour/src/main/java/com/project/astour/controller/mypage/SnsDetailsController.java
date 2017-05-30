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
import com.project.astour.service.mypage.SnsDetailsService;

@Controller
@RequestMapping("snsdetails")
public class SnsDetailsController {
	@Inject
	SnsDetailsService snsDetailsService;

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
		
		snsDetailsService.hitsView(spk,session);//조횟수
		List<snsVO> contentView = snsDetailsService.contentView(spk);
		List<SnsFileVO> contentViewFile = snsDetailsService.contentViewFile(spk);
		List<SnsReplyVO> replyView = snsDetailsService.replyView(spk);
		SnsReplyVO ct = snsDetailsService.count(spk);
		
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
		
		snsDetailsService.reply(vo);
		List<snsVO> contentView = snsDetailsService.contentView(vo.getSpk());
		List<SnsFileVO> contentViewFile = snsDetailsService.contentViewFile(vo.getSpk());
		List<SnsReplyVO> replyView = snsDetailsService.replyView(vo.getSpk());
		
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
