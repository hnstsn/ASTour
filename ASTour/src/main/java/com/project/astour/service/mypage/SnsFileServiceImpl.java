package com.project.astour.service.mypage;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.mypage.SnsFileDAO;
import com.project.astour.model.dto.mypage.SnsFileVO;

@Service
public class SnsFileServiceImpl implements SnsFileService {

	@Inject
	SnsFileDAO snsFileDAO;
	
	@Override
	public SnsFileVO snsFileList(int spk) {
		
		return snsFileDAO.snsFileList(spk);
	}
	
}
