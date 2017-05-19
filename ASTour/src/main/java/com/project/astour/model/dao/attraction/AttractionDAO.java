package com.project.astour.model.dao.attraction;

import java.util.List;

import com.project.astour.model.dto.attraction.attraction_tbl;


public interface AttractionDAO {
	public List<attraction_tbl> attractionList();
	public List<attraction_tbl> attractionAtitle(String ATITLE);
	public List<attraction_tbl> attractionAsort(String ASORT);
	
}
