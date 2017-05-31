package com.project.astour.controller.mypage;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.snsVO;
import com.project.astour.service.member.MemberService;
import com.project.astour.service.mypage.SnsFileService;
import com.project.astour.service.mypage.SnsService;

@Controller
@RequestMapping("sns")
public class SnsController {
	
	private static final Logger logger = LoggerFactory.getLogger("SnsController.class");

	@Inject
	SnsService snsService;

	@Inject
	SnsFileService snsFileService;

	@Inject
	MemberService memberService;

	
	// 처음화면 (0)
	@RequestMapping("initSns.do")
	public String initSns(Model model, @RequestParam(value = "mpk") int mpk) {
		// 회원정보 가져오기
		MemberVO member = snsService.memList(mpk);
		// sns 게시글 가져오기
		List<snsVO> snsList = snsService.snsList(mpk);
		// 게시글에 해당하는 사진 가져오기
		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();
		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
			System.out.println("보내줄 spk : " + vo.getSpk());
			snsFileVO = snsFileService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);
			}
		}
		model.addAttribute("member", member); // 회원정보
		model.addAttribute("list", snsList); // 게시물 리스트
		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	// 글쓰기 페이지
	@RequestMapping("writeview.do")
	public String writeview(Model model, @RequestParam(value = "mpk") int mpk) {
		model.addAttribute("mpk", mpk);
		model.addAttribute("curPage", "snsView/write.jsp");
		return "home";
	}

	// 게시글 작성
	@RequestMapping("insert.do")
	public String initinsert(Model model, @ModelAttribute snsVO sns, @RequestParam int mpk) throws Exception {
		snsService.insBrd(sns);

		List<snsVO> snsList = snsService.snsList(sns.getMpk());
		MemberVO member = snsService.memList(sns.getMpk());
		// AST(CSW) : 게시글에 해당하는 사진 가져오기
		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();
		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
			snsFileVO = snsFileService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);
			}
		}
		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("member", member);
		model.addAttribute("list", snsList);
		// 게시글 작성
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	// 사람찾기 (0)
	@RequestMapping("snsPepole.do")
	public String pepole(Model model, @RequestParam(value = "pepole_id") String pepole_id) {
		logger.info("사람찾기 접속");
		List<MemberVO> pepoleList = snsService.pepoleList(pepole_id);
		model.addAttribute("pepoleList", pepoleList);
		model.addAttribute("curPage", "snsView/snsPepoleView.jsp");
		return "home";
	}

	// 사람찾기후 페이지 들어옴 (0)
	@RequestMapping("findPepole.do")
	public String iniPepole(Model model, @RequestParam(value = "mpk") int mpk) {
		// 그 사람의 게시물들
		List<snsVO> snsList = snsService.snsList(mpk);
		// 그 사람 정보
		MemberVO member = snsService.memList(mpk);
		// 게시물의 파일 가져오기
		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();
//		System.out.println("snsLIst크기 : " + snsList.size());
		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
//			System.out.println("보내줄 spk : " + vo.getSpk());
			snsFileVO = snsFileService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);
			}
		}

		model.addAttribute("member", member);
		model.addAttribute("list", snsList);
		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	// 전체검색 (0)
	@RequestMapping("snsSelect.do")
	public String snsSelect(Model model, @RequestParam(value = "mpk") int mpk) {
		List<snsVO> snsList = snsService.snsList(mpk);
		MemberVO member = snsService.memList(mpk);

		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();
		System.out.println("snsLIst크기 : " + snsList.size());
		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
			System.out.println("보내줄 spk : " + vo.getSpk());
			snsFileVO = snsFileService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);
			}
		}

		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("member", member);
		model.addAttribute("list", snsList);
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	@RequestMapping("reviewSelect.do")
	public String reviewSelect(Model model, @RequestParam(value = "mpk") int mpk) {

		List<snsVO> reviewSelect = snsService.reviewSelect(mpk);
		MemberVO member = snsService.memList(mpk);

		model.addAttribute("member", member);
		model.addAttribute("list", reviewSelect);
		model.addAttribute("curPage", "snsView/sns.jsp");

		return "home";
	}

}
