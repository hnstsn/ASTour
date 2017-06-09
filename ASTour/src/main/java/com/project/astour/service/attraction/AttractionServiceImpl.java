package com.project.astour.service.attraction;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dao.attraction.AttractionDAO;
import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.attraction.reViewListVO;
import com.project.astour.model.dto.attraction.tagrankVO;
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
	
	//최신순 리스트 가지고오기
	@Override
	public List<reViewListVO> reviewattraction(
			@RequestParam(value="start") int start,
			@RequestParam(value="end") int end,
			@RequestParam(value="title") String title){
		return attractionDao.reviewattraction(start,end,title);
	}
	
	//조회순 리스트 가지고오기
	@Override
	public List<reViewListVO> reviewattractionhits(
			@RequestParam(value="start") int start,
			@RequestParam(value="end") int end,
			@RequestParam(value="title") String title){
		return attractionDao.reviewattractionhits(start,end,title);
	}

	//파일 이름 하나만 가지고오기 
	@Override
	public String filename(int spk) {
		return attractionDao.filename(spk);
	}

	@Override
	public int recount(int spk) {
		return attractionDao.recount(spk);
	}

	@Override
	public int allCount(String title) {
		return attractionDao.allCount(title);
	}

	@Override
	public List<tagrankVO> tagrank() {
		
		return attractionDao.tagrank();
	}

	
}
