package com.project.astour.controller.mypage;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.snsVO;
import com.project.astour.service.member.MemberService;
import com.project.astour.service.mypage.SnsService;
import com.project.astour.service.timeline.TimelineService;
import com.project.astour.service.write.WriteService;

@Controller
@RequestMapping("sns")
public class SnsController {
	
	@Inject
	SnsService snsService;
	
	@Inject
	MemberService memberservice;
	
	@Inject
	WriteService writeservice;
	
	@Inject
	TimelineService timelineService;
	int mp=0;
	//처음화면
	@RequestMapping("initSns.do")
	public String initSns(Model model,@RequestParam(value="mpk") int mpk) {
		mp=mpk;
		List<snsVO> snsList = snsService.snsList(mpk);
		List<MemberVO> memList = snsService.memList(mpk);
		
		model.addAttribute("memList", memList);
		model.addAttribute("list", snsList);
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}
	
	//글쓰기  페이지
	@RequestMapping("writeview.do")
	public String writeview(Model model,
				@RequestParam(value="mpk") int mpk){
		model.addAttribute("curpage", "snsView/write.jsp");
		model.addAttribute("mpk", mpk);
		return "snsView/write";
	}

	//글쓰기 추가 후 여기서 파일업로드 추가로 해야함
	@RequestMapping("insert.do")
	public String initinsert(Model model,
			@ModelAttribute snsVO vo){
		writeservice.insertcontent(vo);
		
		List<snsVO> snsList = snsService.snsList(vo.getMpk());
		List<MemberVO> memList = snsService.memList(vo.getMpk());
		model.addAttribute("memList", memList);
		model.addAttribute("list", snsList);
		model.addAttribute("curPage", "snsView/sns.jsp");
		
		return "home";
	}
	
	
	//삭제 수정해야함
	@RequestMapping("delete.do")
	public String initdelete(Model model,
			MemberVO memberVo,
			@RequestParam(value="spk") int spk){
		snsService.contentdelete(spk);
		
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}
	
	//사람찾기
	@RequestMapping("snsPepole.do")
	public String pepole(Model model,
			@RequestParam(value="pepole_id") String pepole_id){
		List<MemberVO> pepoleList =snsService.pepoleList(pepole_id);
		model.addAttribute("pepoleList",pepoleList);
		model.addAttribute("curPage", "snsView/snsPepoleView.jsp");
		return "home";
	}
	
	//사람찾기후 페이지 들어옴
	@RequestMapping("iniPepole.do")
	public String iniPepole(Model model,
			@RequestParam(value="mpk") int mpk){
		
		List<snsVO> snsList = snsService.snsList(mpk);
		List<MemberVO> memList = snsService.memList(mp);
		
		model.addAttribute("memList", memList);
		model.addAttribute("list", snsList);
		
		System.out.println("확인:"+mpk);
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}
	
	//aaaaaaaa

	@RequestMapping("contentview.do")
	public String BlogContent(Model model,
			@RequestParam(value="spk") int spk) {
		
		List<snsVO> contentView = timelineService.contentView(spk);
		model.addAttribute("list", contentView);
		model.addAttribute("curPage", "snsView/contentview.jsp");
		return "home";
		
	}

}
