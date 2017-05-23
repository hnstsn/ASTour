package com.project.astour.controller.mypage;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.mypage.snsVO;
import com.project.astour.service.mypage.SnsService;
import com.project.astour.service.timeline.TimelineService;

@Controller
@RequestMapping("sns")
public class SnsController {
	
	@Inject
	SnsService snsService;
	
	@Inject
	TimelineService timelineService;
	
	@RequestMapping("initSns.do")
	public String initSns(Model model) {
		List<snsVO> snsList = snsService.snsList();
		model.addAttribute("list", snsList);
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	
	@RequestMapping("contentview.do")
	public String BlogContent(Model model,
			@RequestParam(value="spk") int spk) {
		
		List<snsVO> contentView = timelineService.contentView(spk);
		model.addAttribute("list", contentView);
		model.addAttribute("curPage", "snsView/contentview.jsp");
		return "home";
		
	}
	

	@RequestMapping("write")
	public String init(Model model
			){
		return "snsView/write";
	}


}
