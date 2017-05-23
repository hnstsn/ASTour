package com.project.astour.controller.reViewList;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.mypage.snsVO;
import com.project.astour.service.attraction.AttractionService;

@Controller
public class ReViewList {
	@Inject
	AttractionService attractionService;
	
	@RequestMapping("reViewList")
	public String init(Model model,
			Reviewjava reviewjava){

		List<snsVO> attractionList = attractionService.reviewattraction(reviewjava.getReview_ATITLE());
		model.addAttribute("list", attractionList);
		
		//제목 ,이미지 이름 넘겨줌 
		model.addAttribute("title",reviewjava.getReview_ATITLE());
		model.addAttribute("image",reviewjava.getReview_AIMAGE());
		model.addAttribute("curPage","review/reviewListView.jsp");
		System.out.println("접속함ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ");
		
		return "home";
	}
}
