package com.project.astour.service.details;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dao.details.DetailsDAO;
import com.project.astour.model.dto.attraction.attraction_tbl;

@Service
public class DetailsSerationImpl implements DetailsSeration{
	
	@Inject
	DetailsDAO detailsdao;

	@Override
	public List<attraction_tbl> detailsList(@RequestParam(value="ATITLE") String ATITLE) {
		return detailsdao.detailsList(ATITLE);
	}

}
