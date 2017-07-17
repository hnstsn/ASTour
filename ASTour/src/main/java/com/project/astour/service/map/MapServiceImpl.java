package com.project.astour.service.map;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.map.MapDAO;
import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.map.GpsRecord;
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

	@Override
	public List<attraction_tbl> searchLocation(attraction_tbl vo) {
	
		return mapDAO.searchLocation(vo);
	}

	@Override
	public List<GpsRecord> gpsSelectname(int pk) {
		return mapDAO.gpsSelectname(pk);
	}

	@Override
	public List<GpsRecord> gpsSelect(String title, int pk) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pk", pk);
		map.put("title", title);
		return mapDAO.gpsSelect(map);
	}
	
	

}
