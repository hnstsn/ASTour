package com.project.astour.model.dao.map;

import java.util.List;
import java.util.Map;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.map.GpsRecord;
import com.project.astour.model.dto.map.sigunVO;

public interface MapDAO {
	
	public List<attraction_tbl> attractionList();
	public List<sigunVO> sigunList();
	public List<sigunVO> gunList(String name);
	public List<attraction_tbl> searchLocation(attraction_tbl vo);
	//selectgpsname
	public List<GpsRecord> gpsSelectname(int pk);
	public List<GpsRecord> gpsSelect(Map<String, Object> map);
}
