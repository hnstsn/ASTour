package com.project.astour.controller.mypage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.ietf.jgss.Oid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.Pager;
import com.project.astour.model.dto.mypage.Profile;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.snsVO;
import com.project.astour.service.attraction.AttractionService;
import com.project.astour.service.member.MemberService;
import com.project.astour.service.mypage.SnsDetailsService;
import com.project.astour.service.mypage.SnsService;

@Controller
@RequestMapping("sns")
public class SnsController {
	
	private static final Logger logger = LoggerFactory.getLogger("SnsController.class");

	@Inject
	SnsService snsService;
	@Inject
	AttractionService attractionService;

	@Inject
	MemberService memberService;
	
	@Inject
	SnsDetailsService snsDetailsService;

	// 처음화면 (0)
	@RequestMapping("initSns.do")
	public String initSns(Model model, @RequestParam(value = "mpk") int mpk,
			@RequestParam(defaultValue = "1") int curPage1) {

		int count = snsService.count(mpk);

		Pager pager = new Pager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		pager.setMpk(mpk);
				
		// 회원정보 가져오기
		MemberVO member = snsService.memList(mpk);
		// sns 게시글 가져오기
		List<snsVO> snsList = snsService.snsList(start, end, mpk);
		// 게시글에 해당하는 사진 가져오기
		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();
		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
			vo.setReCnt(snsService.replycountList(mpk, vo.getSpk()));;
			// 좋아요 세팅
			vo.setSlikes(snsDetailsService.likecount(vo.getSpk()));
			snsFileVO = snsService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);
			}
		}

		model.addAttribute("pager", pager);
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
		List<attraction_tbl> attractionList = attractionService.attractionList(); 
		model.addAttribute("list", attractionList);
		model.addAttribute("curPage", "snsView/write.jsp");
		return "home";
	}

	// 게시글 작성
	@RequestMapping("insert.do")
	public String initinsert(Model model,
			@RequestParam(defaultValue = "1") int curPage1,
			@ModelAttribute snsVO sns, @RequestParam int mpk) throws Exception {
		snsService.insBrd(sns);

		int count = snsService.count(mpk);

		Pager pager = new Pager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		pager.setMpk(mpk);
		
		List<snsVO> snsList = snsService.snsList(start,end,sns.getMpk());
		MemberVO member = snsService.memList(sns.getMpk());
		// AST(CSW) : 게시글에 해당하는 사진 가져오기
		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();
		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
			vo.setReCnt(snsService.replycountList(mpk, vo.getSpk()));;
			vo.setSlikes(snsDetailsService.likecount(vo.getSpk()));
			snsFileVO = snsService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);
			}
		}
		model.addAttribute("pager", pager);//페이지처리
		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("member", member);
		model.addAttribute("list", snsList);
		// 게시글 작성
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	// 사람찾기 (0)
	@RequestMapping("snsPeople.do")
	public String pepole(Model model, @RequestParam(value = "people_id") String people_id) {
		List<MemberVO> peopleList = snsService.peopleList(people_id);
		
		for(MemberVO vo :peopleList){
			System.out.println("사람찾기");
			String fileName=snsDetailsService.replyViewFile(vo.getMpk());
			System.out.println(fileName);
			if(fileName!=null){
				vo.setPfile(fileName);
			}else{
				vo.setPfile("mu.jpg");
			}
		}
		
		model.addAttribute("peopleList", peopleList);
		model.addAttribute("curPage", "snsView/snsPeopleView.jsp");
		return "home";
	}

	// 사람찾기후 페이지 들어옴 (0)
	@RequestMapping("findPepole.do")
	public String iniPepole(Model model, 
			@RequestParam(defaultValue = "1") int curPage1,
			@RequestParam(value = "mpk") int mpk) {

		int count = snsService.count(mpk);

		Pager pager = new Pager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		pager.setMpk(mpk);
		
		// 그 사람의 게시물들
		List<snsVO> snsList = snsService.snsList(start,end,mpk);
		// 그 사람 정보
		MemberVO member = snsService.memList(mpk);
		// 게시물의 파일 가져오기
		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();
		// System.out.println("snsLIst크기 : " + snsList.size());
		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
			vo.setReCnt(snsService.replycountList(mpk, vo.getSpk()));;
			vo.setSlikes(snsDetailsService.likecount(vo.getSpk()));
			// System.out.println("보내줄 spk : " + vo.getSpk());
			snsFileVO = snsService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);
			}
		}
		model.addAttribute("pager", pager);//페이지처리
		model.addAttribute("member", member);
		model.addAttribute("list", snsList);
		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	// 전체검색 (0)
	@RequestMapping("snsSelect.do")
	public String snsSelect(Model model, 
			@RequestParam(defaultValue = "1") int curPage1,
			@RequestParam(value = "mpk") int mpk) {

		int count = snsService.count(mpk);

		Pager pager = new Pager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		pager.setMpk(mpk);
		 
		List<snsVO> snsList = snsService.snsList(start,end,mpk);
		MemberVO member = snsService.memList(mpk);

		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();
		System.out.println("snsLIst크기 : " + snsList.size());
		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
			vo.setReCnt(snsService.replycountList(mpk, vo.getSpk()));
			vo.setSlikes(snsDetailsService.likecount(vo.getSpk()));
			System.out.println("보내줄 spk : " + vo.getSpk());
			snsFileVO = snsService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);
			}
		}
		model.addAttribute("pager", pager);//페이지처리 
		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("member", member);
		model.addAttribute("list", snsList);
		model.addAttribute("curPage", "snsView/sns.jsp");
		return "home";
	}

	// 리뷰 게시물인지 나의 게시물인지 확인
	@RequestMapping("reviewSelect.do")
	public String reviewSelect(@RequestParam int mpk,
			@RequestParam String ssort, Model model,
			@RequestParam(defaultValue="1") int curPage1) {
		
		int count = snsService.countSsort(mpk, ssort);

		Pager pager = new Pager(count, curPage1);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		pager.setMpk(mpk);
		pager.setSsort(ssort);
		
		
		List<snsVO> snsList = snsService.reviewSelect(start, end, mpk, ssort);
		MemberVO member = snsService.memList(mpk);
		List<SnsFileVO> snsFileList = new ArrayList<SnsFileVO>();

		SnsFileVO snsFileVO;
		for (snsVO vo : snsList) {
			vo.setReCnt(snsService.replycountList(mpk, vo.getSpk()));;
			vo.setSlikes(snsDetailsService.likecount(vo.getSpk()));
			System.out.println("보내줄 spk : " + vo.getSpk());
			snsFileVO = snsService.snsFileList(vo.getSpk());
			if (snsFileVO != null) {
				snsFileList.add(snsFileVO);	
			}
		}
		
		model.addAttribute("pager", pager);
		model.addAttribute("ssort",ssort);
		model.addAttribute("snsFileList", snsFileList); // 파일 리스트
		model.addAttribute("member", member);
		model.addAttribute("list", snsList);
		model.addAttribute("curPage", "snsView/snsSsort.jsp");

		return "home";
	}
	
	// 사진첩 가져오기(전부)
	@RequestMapping("gallery.do")
	public String gallery(Model model,@RequestParam(value="mpk") int mpk,
			@RequestParam(defaultValue="all") String sort) {
		
		// 회원정보 가져오기
		MemberVO member = snsService.memList(mpk);
		List<Profile> blogList = snsService.blogList(mpk);//블로그 파일 리스트 
		List<Profile> profileList = snsService.profileList(mpk);//프로필 파일 리스트 

		Map<String, Object> map = new HashMap<String, Object>();
		
		if(sort.equals("all")){
			map.put("blog", blogList);
			map.put("profile", profileList);
		}else if(sort.equals("profile")){
			map.put("profile", profileList);
		}else{
			map.put("blog", blogList);
		}
		
		map.put("member", member);
		
		model.addAttribute("map",map);
		model.addAttribute("curPage", "snsView/gallery.jsp");
		return "home";
	}
	
	// AST(CSW) : 채팅
	@RequestMapping("chat.do")
	public ModelAndView chatting(@RequestParam int from, @RequestParam int to,
								 ModelAndView mav) {
		logger.info("from : " + from + ", to : " + to);
		MemberVO fromVO = memberService.getInfo(from);
		MemberVO toVO = memberService.getInfo(to);
		mav.addObject("from", fromVO);
		mav.addObject("to", toVO);
		mav.setViewName("chatting/chat");
		return mav;
	}
	
}
