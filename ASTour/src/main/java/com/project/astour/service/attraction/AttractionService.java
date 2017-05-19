package com.project.astour.service.attraction;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;

@Service
public interface AttractionService {
	
	public List<attraction_tbl> attractionList();
	public List<attraction_tbl> attractionAtitle(
			@RequestParam(value="ATITLE") String ATITLE);
	public List<attraction_tbl> attractionAsort(
			@RequestParam(value="ASORT") String ASORT);
}
