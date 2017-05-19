package com.project.astour.model.dao.attraction;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;


public interface AttractionDAO {
	public List<attraction_tbl> attractionList();
	public List<attraction_tbl> attractionAtitle(
			@RequestParam(value="ATITLE") String ATITLE);
	public List<attraction_tbl> attractionAsort(
			@RequestParam(value="ASORT") String ASORT);
	
}
