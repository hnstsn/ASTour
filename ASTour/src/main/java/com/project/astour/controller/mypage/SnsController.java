package com.project.astour.controller.mypage;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.mypage.snsVO;
import com.project.astour.service.mypage.SnsService;
import com.project.astour.service.timeline.TimelineService;
import com.project.astour.service.write.WriteService;

@Controller
@RequestMapping("sns")
public class SnsController {
	
	@Inject
	SnsService snsService;
	
	@Inject
	WriteService writeservice;
	
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
	
	@RequestMapping("writeview.do")
	public String writeview(Model model){
//		model.addAttribute("curpage", "snsView/write.jsp");
		return "snsView/write";
	}
	

	@RequestMapping("insert.do")
	public String initinsert(Model model,
			@ModelAttribute snsVO vo){
		
		
		writeservice.insertcontent(vo);
		List<snsVO> snsList = snsService.snsList();
		model.addAttribute("list", snsList);
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}


}
