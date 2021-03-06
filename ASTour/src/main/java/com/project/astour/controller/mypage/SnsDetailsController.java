package com.project.astour.controller.mypage;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.LikeVO;
import com.project.astour.model.dto.mypage.Pager;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;
import com.project.astour.service.member.MemberService;
import com.project.astour.service.mypage.SnsDetailsService;
import com.project.astour.service.mypage.SnsService;

@Controller
@RequestMapping("snsdetails")
public class SnsDetailsController {
	
	@Inject
	SnsDetailsService snsDetailsService;
	
	@Inject
	SnsService snsService;
	
	@Inject
	MemberService mService;

	// 게시글 상세보기
	@RequestMapping("contentview.do")
	public String BlogContent(Model model, @RequestParam(defaultValue="1") int spk,
			@RequestParam(defaultValue="1") int curPage1, HttpSession session) {
		//spk로 조인을 통해서 상세보기 name 하나만 가지고옴
		String mname=snsDetailsService.nameone(spk);
		snsDetailsService.hitsView(spk,session);//조회수
		// 해당 게시글 가져오기
		snsVO contentView = snsDetailsService.contentView(spk);
		// 해당 게시글의 파일 가져오기
		List<SnsFileVO> contentViewFile = snsDetailsService.contentViewFile(spk);
		//List<SnsReplyVO> replyView = snsDetailsService.replyView(spk);
		MemberVO mem = (MemberVO) session.getAttribute("member");
		int mpk = mem.getMpk();
		
		LikeVO like = new LikeVO(mpk, spk);
		
		
		SnsReplyVO ct = snsDetailsService.count(spk);
		Pager pager = new Pager(ct.getCt(),curPage1);
		pager.setSpk(spk);//spk 를 가지고 있어야하기때문에
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		// 해당 게시물의 댓글 가져오기
		List<SnsReplyVO> replyView =snsDetailsService.replyView(start,end,spk);
		//해당 게시물의 댓글 프로필사진을 가지고 오기 위함
		for(SnsReplyVO vo : replyView){
			String fileName=snsDetailsService.replyViewFile(vo.getMpk());
			if(fileName!=null){
				vo.setPfile(fileName);
			}
			else{
				vo.setPfile("mu.jpg");
			}
		}
		
		if (snsDetailsService.likeSelect(like) == null) {
			model.addAttribute("likeChk", "no");
		} else {
			model.addAttribute("likeChk", "yes");
		}
		
		model.addAttribute("pager",pager);
		model.addAttribute("replyView",replyView);
		model.addAttribute("fileList",contentViewFile);
		model.addAttribute("contenlist", contentView);
		model.addAttribute("mname", mname);
		model.addAttribute("curPage", "snsView/contentview.jsp");
		return "home";
	}
	
	// AST(CSW) : 게시글 삭제
	@RequestMapping("deContent.do")
	public String deleteContent(@ModelAttribute snsVO sns) {
		// 해당 게시글의 댓글 삭제
		snsDetailsService.deleteReplys(sns.getSpk());
		// 해당 게시물의 좋아요 삭제
		snsDetailsService.likedelete(sns.getMpk(), sns.getSpk());
		// 해당 게시글 삭제
		snsDetailsService.contentDelete(sns);
		return "redirect:/chgPage.do?cpage=30";
	}
	
	// AST(CSW) : 게시글 수정화면으로 이동
	@RequestMapping("updateView.do")
	public String updateView(@ModelAttribute snsVO sns, Model model) {
		// 해당 게시글 가져오기
		snsVO brd = snsDetailsService.contentView(sns.getSpk());
		// 해당 게시글의 파일 가져오기
		List<SnsFileVO> fileList = snsDetailsService.contentViewFile(sns.getSpk());
		// 저장한 파일명으로 세팅해서 넘겨주기
		for (SnsFileVO snsFile : fileList) {
			// 저장된 파일명을 가져와서
			String fname = snsFile.getSffile();
			int sIdx = fname.indexOf('_') + 1;
			// 원래 파일명으로 바꿔주기
			snsFile.setSffile(fname.substring(sIdx));
		}
		model.addAttribute("brd", brd);
		model.addAttribute("fileList",fileList);
		model.addAttribute("curPage", "snsView/updateContent.jsp");
		return "home";
	}
	
	// AST(CSW) : 게시판 수정
	// 게시판 수정때 파일은 삽입, 삭제 뿐이다.
	// 삽입은 새로운 파일 추가, 삭제는 존재하던 파일 삭제
	@RequestMapping("updateBrd.do")
	public String updateBrd(@ModelAttribute snsVO sns, @RequestParam int[] dePics) throws Exception {
		// 삭제하려고 하는 사진들을 삭제
		for (int sfpk : dePics)
			snsDetailsService.deletePic(sfpk);
		
		// 해당 게시글 수정
		snsDetailsService.upContent(sns);
		
		// 새로운 사진 추가가 존재한다면 추가
		if (sns.getFiles() != null) {
			for (MultipartFile f : sns.getFiles()) {
				SnsFileVO sFile = new SnsFileVO();
				sFile.setSffile(f.getOriginalFilename());
				sFile.setSpk(sns.getSpk());
				snsService.insBrdFiles(sFile, f);
			}
		}
		// 다하면 sns 처음화면으로
		return "redirect:/chgPage.do?cpage=30";
	}
	
	//추가
	@RequestMapping("in.do")
	public String PostContent(Model model,
			@RequestParam(value="rcontent") String rcontent,
			@RequestParam(value="mpk") int mpk,
			@RequestParam(value="spk") int spk){
		//댓글 추가
		snsDetailsService.reply(mpk,spk,rcontent);
		
		return "redirect:/snsdetails/contentview.do?spk="+spk;
	}
	
	//댓글삭제
	@RequestMapping("delete.do")
	public String delete(Model model, @ModelAttribute SnsReplyVO vo){
		snsDetailsService.delete(vo.getRpk()); //댓글 삭제 
		return "redirect:/snsdetails/contentview.do?spk="+vo.getSpk();
	}
	
	//댓글수정 view
    @RequestMapping("up.do")
	public String up(Model model,@ModelAttribute SnsReplyVO vo){
    	//댓글 추가 할때 하나만 가지고오기
       SnsReplyVO snsReplyVO = snsDetailsService.upselect(vo.getRpk());
       //댓글 추가 할때 해당하는 사람의 사진 하나만 가지고오기 
       String fileName=snsDetailsService.replyViewFile(vo.getMpk());
       System.out.println("view 확인"+fileName);
       if(fileName!=null){	//사진이 있을 경우 
    	   model.addAttribute("file",fileName);
       }else{ //사진이 없을 경우
    	   model.addAttribute("file","mu.jpg");
       }
       model.addAttribute("rpk",vo.getRpk());
       model.addAttribute("list",snsReplyVO);
       model.addAttribute("mname",vo.getMname());
       model.addAttribute("spk",vo.getSpk());
       return "snsView/updateView";
    }
    
    //댓글수정 저장
    @RequestMapping("update.do")
    public void update(Model model, SnsReplyVO vo){
       System.out.println("접속했다111111111111");
       snsDetailsService.replyupdate(vo);
    }
    
    //좋아요 컨트롤
    @RequestMapping("likeinsert.do")
    @ResponseBody
    public String likeinsert(Model model,
    		@RequestParam(value="mpk") int mpk,
    		@RequestParam(value="spk") int spk){
    	
    	snsDetailsService.likeinsert(mpk, spk);
    	LikeVO like = new LikeVO(mpk, spk);
    	System.out.println("??!!!!!!!!!!!!!" + snsDetailsService.likeSelect(like));
    	if (snsDetailsService.likeSelect(like) == null) {
			return "no";
		} else {
			return "yes";
		}
    }
    
    //좋아요 해제 컨트롤
    @RequestMapping("likeDelete.do")
    @ResponseBody
    public String likeDelete(Model model,
    		@RequestParam(value="mpk") int mpk,
    		@RequestParam(value="spk") int spk){
    	
    	snsDetailsService.likedelete(mpk, spk);
    	LikeVO like = new LikeVO(mpk, spk);
    	if (snsDetailsService.likeSelect(like) == null) {
			return "no";
		} else {
			return "yes";
		}
    }
    
    
    
    

}
