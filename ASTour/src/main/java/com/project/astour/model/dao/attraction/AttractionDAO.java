package com.project.astour.model.dao.attraction;

import java.util.List;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.attraction.reViewListVO;
import com.project.astour.model.dto.attraction.tagrankVO;


public interface AttractionDAO {
	public List<attraction_tbl> attractionList();
	public List<attraction_tbl> attractionAtitle(String ATITLE);
	public List<attraction_tbl> attractionAsort(String ASORT);
	//리뷰 리스트 가지고오기 최신순
	public List<reViewListVO> reviewattraction(int start,int end,String title);
	//리뷰 리스트 가지고오기 조회순
	public List<reViewListVO> reviewattractionhits(int start,int end,String title);
	
	//파일이름 하나 가지고오기 
	public String filename(int spk);
	//댓글수 하나 가지고오기 
	public int recount(int spk);
	//전채 댓글수 구하기
	public int allCount(String title);
	//태그 순위
	public List<tagrankVO> tagrank();
}
