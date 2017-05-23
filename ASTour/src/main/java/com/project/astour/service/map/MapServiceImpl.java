package com.project.astour.service.map;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.map.MapDAO;
import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.map.sigunVO;

@Service
public class MapServiceImpl implements MapService{

	@Inject
	MapDAO mapDAO;
	
	//명소
	@Override
	public List<attraction_tbl> mapList() {
		
		return mapDAO.attractionList();
	}

	@Override
	public List<sigunVO> sigunList() {
		
		return mapDAO.sigunList();
	}

	@Override
	public List<sigunVO> gunList(String name) {
		
		return mapDAO.gunList(name);
	}
	
	
	

}
