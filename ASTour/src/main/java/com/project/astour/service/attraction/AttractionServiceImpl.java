package com.project.astour.service.attraction;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.attraction.AttractionDAO;
import com.project.astour.model.dto.attraction.attraction_tbl;

@Service
public class AttractionServiceImpl implements AttractionService{

	@Inject
	AttractionDAO attractionDao;
	
	@Override
	public List<attraction_tbl> attractionList() {
		return attractionDao.attractionList();
	}
	
}
