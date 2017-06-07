package com.project.astour.controller.reViewList;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.reViewListVO;
import com.project.astour.model.dto.mypage.Pager;
import com.project.astour.service.attraction.AttractionService;

@Controller
public class ReViewController {
	@Inject
	AttractionService attractionService;
	
	@RequestMapping("reViewList.do")
	public String reViewList(Model model,
			@RequestParam(defaultValue = "1") int curPage1,
			Reviewjava reviewjava){
		//<페에지 처리>
		int count = attractionService.allCount(reviewjava.getReview_ATITLE());
		Pager pager = new Pager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		model.addAttribute("pager",pager);
		//</페이지 처리>
		
		List<reViewListVO> attractionList = 
				attractionService.reviewattraction(start,end,reviewjava.getReview_ATITLE());
		
		for (reViewListVO vo : attractionList) {
			System.out.println("보내줄 spk : " + vo.getSpk());
			String snsFile=attractionService.filename(vo.getSpk());
			vo.setCt(attractionService.recount(vo.getSpk()));
			if (snsFile != null) {
				vo.setFilename(snsFile);
			}
			else 
				vo.setFilename(reviewjava.getReview_AIMAGE());
		}
		
		model.addAttribute("controller","reViewList.do");
		model.addAttribute("list", attractionList);
		model.addAttribute("image",reviewjava.getReview_AIMAGE());
		model.addAttribute("title",reviewjava.getReview_ATITLE());
		model.addAttribute("curPage","review/reviewListView.jsp");

		return "home";
	}
	
	@RequestMapping("hitslist.do")
	public String hitsList(Model model,
			@RequestParam(defaultValue = "1") int curPage1,
			Reviewjava reviewjava){
		//<페에지 처리>
		int count = attractionService.allCount(reviewjava.getReview_ATITLE());
		Pager pager = new Pager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		model.addAttribute("pager",pager);
		//</페이지 처리>
		
		List<reViewListVO> attractionList = 
				attractionService.reviewattractionhits(start,end,reviewjava.getReview_ATITLE());
		
		for (reViewListVO vo : attractionList) {
			System.out.println("보내줄 spk : " + vo.getSpk());
			String snsFile=attractionService.filename(vo.getSpk());
			vo.setCt(attractionService.recount(vo.getSpk()));
			if (snsFile != null) {
				vo.setFilename(snsFile);
			}
			else 
				vo.setFilename(reviewjava.getReview_AIMAGE());
		}
		
		model.addAttribute("controller","hitslist.do");
		model.addAttribute("list", attractionList);
		model.addAttribute("image",reviewjava.getReview_AIMAGE());
		model.addAttribute("title",reviewjava.getReview_ATITLE());
		model.addAttribute("curPage","review/reviewListView.jsp");

		return "home";
	}
}
