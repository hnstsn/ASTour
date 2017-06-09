package com.project.astour.model.dao.attraction;

import java.util.List;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.attraction.reViewListVO;
import com.project.astour.model.dto.attraction.tagrankVO;


public interface AttractionDAO {
	public List<attraction_tbl> attractionList(); //전체리스트
	public List<attraction_tbl> attractionList2(int start,int end); //전체리스트뽑아내기(겹처서 새로만듬)
	public int attractionselectCount();// 리스트 카운트
	public List<attraction_tbl> attractionAtitle(String ATITLE,int start,int end);//검색
	public int attractionAtitleCount(String ATITLE);
	public List<attraction_tbl> attractionAsort(String ASORT,int start,int end);//명소 행사 구별
	public int attractionASORTCount(String ASORT);//명소 행사 검색후 카운트
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
