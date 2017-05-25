package com.project.astour.controller.mypage;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.member.ProfileVO;
import com.project.astour.service.member.MemberService;
import com.project.astour.service.mypage.ProfileService;

@Controller
@RequestMapping("modify")
public class ModifyCtrl {
	
	@Inject
	MemberService mService;
	
	@Inject
	ProfileService pService;
	
	@Resource(name="pfUploadPath")
	String pfUploadPath;
	
	@RequestMapping("getPriInfo.do")
	public String infoModify(@RequestParam int mpk, Model model) {
		// 회원정보 가져오기
		MemberVO member = mService.getInfo(mpk);
		model.addAttribute("member", member);
		// 해당하는 회원의 profile 가져오기
		ProfileVO profile = pService.getProfile(mpk);
		model.addAttribute("profile", profile);
		model.addAttribute("curPage", "mypage/modify.jsp");
		return "home";
	}
	
	@RequestMapping("modify.do")
	public String modify(@ModelAttribute MemberVO mem, Model model,
			 			 MultipartFile prfFile) throws Exception {
		// 회원정보 수정하기
		mService.modifyInfo(mem);
		// 첨부파일(프로필 사진)이 있으면
		if (!prfFile.isEmpty()) {
			System.out.println("@@@@" + prfFile.getOriginalFilename());
			// 업로드할 파일명
			String file = prfFile.getOriginalFilename();
			String savedName = uploadFile(file, prfFile.getBytes());
			System.out.println(savedName);
			ProfileVO prf = new ProfileVO();
			prf.setPfile(savedName);
			prf.setMpk(mem.getMpk());
			pService.insertPrf(prf);
		}
		return "redirect:/chgPage.do?cpage=40";
	}
	
//	파일 이름이 중복되지 않도록 처리
	private String uploadFile(String originalName, byte[] fileData) throws Exception {
//		Universal Unique IDentifier, 범용 고유 식별자
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(pfUploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}

}
