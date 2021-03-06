package com.project.astour.service.attraction;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.attraction.reViewListVO;
import com.project.astour.model.dto.attraction.tagrankVO;

@Service
public interface AttractionService {
	
	public List<attraction_tbl> attractionList();//전체리스트
	public List<attraction_tbl> attractionList2(int start,int end);//전체리스트
	public int attractionselectCount();//전체리스트카운트
	public List<attraction_tbl> attractionAtitle(String ATITLE,int start,int end); //검색
	public int attractionAtitleCount(String ATITLE);
	public List<attraction_tbl> attractionAsort(String ASORT,int start,int end);//명소 행사 구분
	public int attractionASORTCount(String ASORT);//명소 행사 구분후 카운트
	
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
	//태그 순위
	public List<tagrankVO> tagrank();
}
