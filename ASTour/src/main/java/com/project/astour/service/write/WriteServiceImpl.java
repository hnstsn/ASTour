package com.project.astour.service.write;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.write.WriteDAO;
import com.project.astour.model.dto.mypage.snsVO;

@Service
public class WriteServiceImpl implements WriteService {

	@Inject
	WriteDAO writedao;
	
	@Override
	public void insertcontent(snsVO vo) {
			
		writedao.insertcontent(vo);
	}

}
