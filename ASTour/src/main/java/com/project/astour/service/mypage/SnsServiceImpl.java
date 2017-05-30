package com.project.astour.service.mypage;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.project.astour.model.dao.mypage.SnsDAO;
import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.snsVO;

@Service
public class SnsServiceImpl implements SnsService {

	@Inject
	SnsDAO snsDao;
	
		
	@Override
	public List<snsVO> snsList(int mpk) {
		return snsDao.snsList(mpk);
	}

	@Override
	public void contentDelete(int spk) {
		
		snsDao.contentDelete(spk);
	}

	@Override
	public List<MemberVO> memList(int mpk) {
		return snsDao.memList(mpk);
	}
	
	//사람찾기
	@Override
	public List<MemberVO> pepoleList(String mname){
		return snsDao.pepoleList("%"+mname+"%");
	}
	
	@Override
	public List<snsVO> reviewSelect(int mpk) {
		return snsDao.reviewSelect(mpk);
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
		// sns 게시글의 파일들이 저장되는 경로
		String uploadPath = "D:\\STS_Workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ASTour\\WEB-INF\\views\\upload\\sns\\";
		// 구별되는 이름으로 저장
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + fName;
		// 해당 경로에 저장될 이름으로 파일 생성해서 복사
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		//
		snsDao.insBrdFiles(savedName);
		
	}


	
}
