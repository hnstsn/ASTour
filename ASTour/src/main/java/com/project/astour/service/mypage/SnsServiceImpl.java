package com.project.astour.service.mypage;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.member.MemberDAO;
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
	public void contentdelete(int spk) {
		
		snsDao.contentdelete(spk);
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

	
}
