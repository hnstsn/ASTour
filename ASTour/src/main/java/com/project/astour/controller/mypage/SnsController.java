package com.project.astour.controller.mypage;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

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

	@Inject
	SnsService snsService;

	@Inject
	SnsFileService snsFileService;

	@Inject
	MemberService memberService;


	// 기존 mpk 식별하기위함
	int mp = 0;

	// 처음화면 (0)
	@RequestMapping("initSns.do")
	public String initSns(Model model, @RequestParam(value = "mpk") int mpk) {
		// 초기 mpk 저장
		mp = mpk;
		// 회원정보 가져오기
		List<MemberVO> memList = snsService.memList(mpk);
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
		model.addAttribute("memList", memList); // 회원정보
		model.addAttribute("list", snsList); // 게시물 리스트
		model.addAttribute("mpk", mp); // 자기 홈페이지인지 아닌지 확인하기 위함
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
		System.out.println("@@@@@@@@@@@@@@@@@@@");
		snsService.insBrd(sns);

		List<snsVO> snsList = snsService.snsList(sns.getMpk());
		List<MemberVO> memList = snsService.memList(sns.getMpk());
		// 게시글에 해당하는 사진 가져오기
		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();
		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
			snsFileVO = snsFileService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);
			}
		}
		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("memList", memList);
		model.addAttribute("mpk", mp);
		model.addAttribute("list", snsList);
		// 게시글 작성
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	// 삭제 수정해야함
	@RequestMapping("delete.do")
	public String initdelete(Model model, MemberVO memberVo, @RequestParam(value = "spk") int spk) {
		snsService.contentDelete(spk);

		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	// 사람찾기 (0)
	@RequestMapping("snsPepole.do")
	public String pepole(Model model, @RequestParam(value = "pepole_id") String pepole_id) {
		System.out.println("사람찾기 접속");
		List<MemberVO> pepoleList = snsService.pepoleList(pepole_id);
		model.addAttribute("pepoleList", pepoleList);
		model.addAttribute("curPage", "snsView/snsPepoleView.jsp");
		return "home";
	}

	// 사람찾기후 페이지 들어옴 (0)
	@RequestMapping("iniPepole.do")
	public String iniPepole(Model model, @RequestParam(value = "mpk") int mpk) {
		List<snsVO> snsList = snsService.snsList(mpk);
		List<MemberVO> memList = snsService.memList(mpk);
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

		model.addAttribute("memList", memList);
		model.addAttribute("list", snsList);
		model.addAttribute("mpk", mp);
		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	// 전체검색 (0)
	@RequestMapping("snsSelect.do")
	public String snsSelect(Model model, @RequestParam(value = "mpk") int mpk) {
		List<snsVO> snsList = snsService.snsList(mpk);
		List<MemberVO> memList = snsService.memList(mpk);

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
		model.addAttribute("memList", memList);
		model.addAttribute("list", snsList);
		model.addAttribute("mpk", mp);
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	@RequestMapping("reviewSelect.do")
	public String reviewSelect(Model model, @RequestParam(value = "mpk") int mpk) {

		List<snsVO> reviewSelect = snsService.reviewSelect(mpk);
		List<MemberVO> memList = snsService.memList(mpk);

		model.addAttribute("memList", memList);
		model.addAttribute("list", reviewSelect);
		model.addAttribute("mpk", mp);
		model.addAttribute("curPage", "snsView/sns.jsp");

		return "home";
	}

}
