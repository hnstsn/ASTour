package com.project.astour.service.map;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.map.MapDAO;
import com.project.astour.model.dto.attraction.attraction_tbl;

@Service
public class MapServiceImpl implements MapService{

	@Inject
	MapDAO mapDAO;
	
	//명소
	@Override
	public List<attraction_tbl> mapList() {
		
		return mapDAO.attractionList();
	}
	
	

}
