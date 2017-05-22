package com.project.astour.controller.sns;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.sns.tbl_snsVO;
import com.project.astour.service.sns.SnsService;
import com.project.astour.service.timeline.TimelineService;

@Controller
@RequestMapping("sns")
public class SnsController {
	
	@Inject
	SnsService snsService;
	
	@Inject
	TimelineService timelineService;

	
	@RequestMapping("contentview.do")
	public String BlogContent(Model model,
			@RequestParam(value="spk") int spk) {
		
		List<tbl_snsVO> contentView = timelineService.contentView(spk);
		model.addAttribute("list", contentView);
				
		return "snsView/contentview";
		
	}
}
