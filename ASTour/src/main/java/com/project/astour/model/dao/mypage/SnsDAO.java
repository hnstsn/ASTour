package com.project.astour.model.dao.mypage;

import java.util.List;
import java.util.Map;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.Profile;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.snsVO;

public interface SnsDAO {

	public List<snsVO> snsList(int start,int end,int mpk);
	public MemberVO memList(int mpk); 
	public List<MemberVO> peopleList(String mname);
	public List<snsVO> reviewSelect(Map<String, Object> map);
	public SnsFileVO snsFileList(int spk);
	public void insBrd(snsVO sns) throws Exception;
	public int getSpk();
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
