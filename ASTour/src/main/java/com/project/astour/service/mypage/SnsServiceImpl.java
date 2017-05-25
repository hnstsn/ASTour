package com.project.astour.service.mypage;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.mypage.SnsDAO;
import com.project.astour.model.dto.mypage.snsVO;

@Service
public class SnsServiceImpl implements SnsService {

	@Inject
	SnsDAO snsDao;
		
	@Override
	public List<snsVO> snsList() {
		return snsDao.snsList();
	}

	@Override
	public void contentdelete(int spk) {
		
		snsDao.contentdelete(spk);
	}
}
