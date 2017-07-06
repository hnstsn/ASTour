package com.project.astour.model.dao.details;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;

public interface DetailsDAO {
	//명소&행사 상세보기 list 말고 클래스로 받아야 한다 
	public List<attraction_tbl> detailsList(@RequestParam(value="ATITLE") String ATITLE);
}
