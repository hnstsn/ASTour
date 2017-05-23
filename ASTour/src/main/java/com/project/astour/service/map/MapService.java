package com.project.astour.service.map;

import java.util.List;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.map.sigunVO;

public interface MapService {
	
	public List<attraction_tbl> mapList();
	public List<sigunVO> sigunList();
	public List<sigunVO> gunList(String name);
}
