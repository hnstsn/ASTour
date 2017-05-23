package com.project.astour.model.dao.map;

import java.util.List;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.map.sigunVO;

public interface MapDAO {
	
	public List<attraction_tbl> attractionList();
	public List<sigunVO> sigunList();
	public List<sigunVO> gunList(String name);
}
