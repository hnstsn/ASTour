package com.project.astour.service.attraction;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dao.attraction.AttractionDAO;
import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.mypage.snsVO;

@Service
public class AttractionServiceImpl implements AttractionService{

	@Inject
	AttractionDAO attractionDao;
	
	//전부
	@Override
	public List<attraction_tbl> attractionList() {
		return attractionDao.attractionList();
	}
	
	//검색
	@Override
	public List<attraction_tbl> attractionAtitle(
			@RequestParam(value="ATITLE") String ATITLE){
		return attractionDao.attractionAtitle("%"+ATITLE+"%");
	}
	
	//명소,행사
	@Override
	public List<attraction_tbl> attractionAsort(
			@RequestParam(value="ASORT") String ASORT){
		return attractionDao.attractionAsort(ASORT);
	}
	
	@Override
	public List<snsVO> reviewattraction(
			@RequestParam(value="title") String title){
		return attractionDao.reviewattraction(title);
	}
	
}
