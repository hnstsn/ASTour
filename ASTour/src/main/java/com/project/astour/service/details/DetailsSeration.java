package com.project.astour.service.details;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;

public interface DetailsSeration {
	
	public List<attraction_tbl> detailsList(@RequestParam(value="ATITLE") String ATITLE);
}
