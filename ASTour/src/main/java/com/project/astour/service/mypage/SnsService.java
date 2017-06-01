package com.project.astour.service.mypage;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsService {

	public List<snsVO> snsList(int start,int end,int mpk);
	public MemberVO memList(int mpk);
	public List<MemberVO> peopleList(String mname);
	public List<snsVO> reviewSelect(int mpk, String ssort);
	public SnsFileVO snsFileList(int spk);
	public void insBrd(snsVO sns) throws Exception;
	public int getSpk();
	public void insBrdFiles(SnsFileVO sFile, MultipartFile f) throws Exception;
	
	// 게시물 갯수 조회
	public int count(int mpk);
}
