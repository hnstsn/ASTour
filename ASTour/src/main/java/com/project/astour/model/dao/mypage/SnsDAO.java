package com.project.astour.model.dao.mypage;

import java.util.List;
import java.util.Map;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.Profile;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsDAO {

	//게시물 list (페이지처리)
	public List<snsVO> snsList(int start,int end,int mpk);
	//게시물 회원정보를 mpk를 보고 찾음
	public MemberVO memList(int mpk); 
	//String 으로 받아서 사람 검색
	public List<MemberVO> peopleList(String mname);
	
	public List<snsVO> reviewSelect(Map<String, Object> map);
	//게시물 해당한 file 정보를 가지고 옴 (controller 에서 for 으로 하나씩 찾음)
	public SnsFileVO snsFileList(int spk);
	
	
	//게시물 작성
	public void insBrd(snsVO sns) throws Exception;
	// 게시글 파일에 필요한 spk
	public int getSpk();
	// 해당하는 게시글의 파일 첨부
	public void insBrdFiles (SnsFileVO sFile);
	
	
	// 게시물 갯수 조회 
	public int count(int mpk);
	public int countSsort(Map<String, Object> map);
	
	//랭크 리스트 파일 사진
	public String rankListfile(int spk);
	
	//랭크 이미지 없을때
	public String noimage(String stag);
		
	// 랭크 보여주기
	public List<snsVO> rankList();
	public int replycountList(Map<String, Object> map);
	
	//사진첩(프로필) 정보가지고오기
	public List<Profile> profileList(int mpk);
	
	//사진첩(게시판) 정보가지고오기
	public List<Profile> blogList(int mpk);
		
	
}
