package com.project.astour.service.attraction;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.attraction.reViewListVO;

@Service
public interface AttractionService {
	
	public List<attraction_tbl> attractionList();
	public List<attraction_tbl> attractionAtitle(String ATITLE);
	public List<attraction_tbl> attractionAsort(String ASORT);
	
	//리뷰 리스트 가지고오기 
	public List<reViewListVO> reviewattraction(int start,int end,String title);
	//리뷰 리스트 가지고오기 조회순
	public List<reViewListVO> reviewattractionhits(int start,int end,String title);
	
	//파일이름 하나 가지고오기 
	public String filename(int spk);
	//댓글수 가지고오기 
	public int recount(int spk);
	//전채 댓글수 구하기
	public int allCount(String title);
}
