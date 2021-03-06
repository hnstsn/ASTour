package com.project.astour.service.mypage;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.project.astour.model.dao.mypage.SnsDAO;
import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.Profile;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.snsVO;

@Service
public class SnsServiceImpl implements SnsService {

	@Inject
	SnsDAO snsDao;
	
//	sns 게시글의 파일들이 저장되는 경로
	@Resource(name="brdUploadPath")
	String brdUploadPath;
	
		
	@Override
	public List<snsVO> snsList(int start,int end,int mpk) {
		return snsDao.snsList(start,end,mpk);
	}

	@Override
	public MemberVO memList(int mpk) {
		return snsDao.memList(mpk);
	}
	
	//사람찾기
	@Override
	public List<MemberVO> peopleList(String mname){
		return snsDao.peopleList("%"+mname+"%");
	}
	
	@Override
	public List<snsVO> reviewSelect(int start, int end, int mpk, String ssort) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("mpk", mpk);
		map.put("ssort", ssort);
		map.put("start", start);
		map.put("end", end);
		
		return snsDao.reviewSelect(map);
	}
	
	@Override
	public SnsFileVO snsFileList(int spk) {
		return snsDao.snsFileList(spk);
	}

	// 게시글 작성
	@Transactional
	@Override
	public void insBrd(snsVO sns) throws Exception {
		// 게시글 작성
		snsDao.insBrd(sns);
		for (MultipartFile file : sns.getFiles()) {
			// 게시글에 첨부한 파일이 있으면
			if (!file.isEmpty()) {
				String fName = file.getOriginalFilename();
				uploadFile(fName, file.getBytes());
			}
			
		}
	}
	
//	파일 이름이 중복되지 않도록 처리 및 업로드
	private void uploadFile(String fName, byte[] fileData) throws Exception {
		// 구별되는 이름으로 저장
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + fName;
		// 해당 경로에 저장될 이름으로 파일 생성해서 복사
		File target = new File(brdUploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		// 파일명과  spk를 구해서 넣어준다
		SnsFileVO sFile = new SnsFileVO();
		sFile.setSffile(savedName);
		sFile.setSpk(getSpk());
		snsDao.insBrdFiles(sFile);
	}

	// 게시글의 파일에 필요한 spk
	@Override
	public int getSpk() {
		return snsDao.getSpk();
	}

	// 게시글 수정시 파일 삽입
	@Override
	public void insBrdFiles(SnsFileVO sFile, MultipartFile f) throws Exception {
		uploadFile(sFile.getSffile(), f.getBytes());
	}

	
	// 게시물 갯수 조회
	@Override
	public int count(int mpk) {
		return snsDao.count(mpk);
	}

	@Override
	public int countSsort(int mpk,String ssort) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mpk", mpk);
		map.put("ssort", ssort);
		return snsDao.countSsort(map);
	}

	
	
	//랭크 보여주기
	@Override
	public List<snsVO> rankList() {
		return snsDao.rankList();
	}
	
	//랭크 이미지 보여주기
	@Override
	public String rankListfile(int spk) {
		return snsDao.rankListfile(spk);
	}
	
	//랭크 이미지 없을떼
	@Override
	public String noimage(String stag) {
		return snsDao.noimage(stag);
	}

	//게시물 댓글수 구해오기
	@Override
	public int replycountList(int mpk, int spk) {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("mpk", mpk);
		map.put("spk", spk);
		return snsDao.replycountList(map);
	}

	//사진첩(프로필) 정보 가지고오기
	@Override
	public List<Profile> profileList(int mpk) {
		return snsDao.profileList(mpk);
	}
	//사진첩(게시판) 정보 가지고오기
	@Override
	public List<Profile> blogList(int mpk) {
		return snsDao.blogList(mpk);
	}

	
}
