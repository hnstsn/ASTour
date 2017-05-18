package com.project.astour.controller.sns;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.astour.model.dto.sns.tbl_snsVO;
import com.project.astour.service.sns.SnsService;

@Controller
public class SnsController {
	
	@Inject
	SnsService snsService;

	@RequestMapping("snsView")
	public String SnsController(Model model) {
		
		List<tbl_snsVO> snsList = snsService.snsList();
		model.addAttribute("list", snsList);
		return "snsView/sns";
	}
}
