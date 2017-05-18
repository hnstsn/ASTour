package com.project.astour.service.attraction;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.astour.model.dto.attraction.attraction_tbl;

@Service
public interface AttractionService {
	
	public List<attraction_tbl> attractionList();
}
