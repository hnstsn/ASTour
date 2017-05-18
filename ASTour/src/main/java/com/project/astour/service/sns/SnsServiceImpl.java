package com.project.astour.service.sns;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.sns.SnsDAO;
import com.project.astour.model.dto.sns.tbl_snsVO;

@Service
public class SnsServiceImpl implements SnsService {

	@Inject
	SnsDAO snsDao;
		
	@Override
	public List<tbl_snsVO> snsList() {
		return snsDao.snsList();
	}
}
