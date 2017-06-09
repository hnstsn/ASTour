package com.project.astour.model.dao.attraction;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.attraction.reViewListVO;
import com.project.astour.model.dto.attraction.tagrankVO;
import com.project.astour.model.dto.mypage.snsVO;

@Repository
public class AttractionDAOImpl implements AttractionDAO{

	@Inject
	SqlSession sqlSession;

	//전부
	@Override
	public List<attraction_tbl> attractionList() {
		return sqlSession.selectList("attractionmap.attractionselect"); 
	}
	//전부 (지영이형이랑 겹처서 새로만듬)
	@Override
	public List<attraction_tbl> attractionList2(int start,int end) {
		Map<String,Integer> map=new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("attractionmap.attractionselect2",map); 
	}

	//전부 카운트
	@Override
	public int attractionselectCount() {
		return sqlSession.selectOne("attractionmap.attractionselectCount");
	}

	//검색
	@Override
	public List<attraction_tbl> attractionAtitle(
			@RequestParam(value="ATITLE") String ATITLE,
			int start,int end){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ATITLE", ATITLE);
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("attractionmap.attractionATITLE",map);
	}
	//검색후 총 카운트
	@Override
	public int attractionAtitleCount(String ATITLE) {
		return sqlSession.selectOne("attractionmap.attractionAtitleCount",ATITLE);
	}
	//행사,명소 구별
	@Override
	public List<attraction_tbl> attractionAsort(
			@RequestParam(value="ASORT") String ASORT,
			int start,int end){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("ASORT", ASORT);
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("attractionmap.attractionASORT",map);
	}
	//행사,명소 구별 후 카운트
	@Override
	public int attractionASORTCount(String ASORT) {
		return sqlSession.selectOne("attractionmap.attractionASORTCount",ASORT);
	}
	
	//리스트 최신순 가지고오기
	@Override
	public List<reViewListVO> reviewattraction(
			@RequestParam(value="start") int start,
			@RequestParam(value="end") int end,
			@RequestParam(value="title") String title){
		Map<String ,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("title", title);
		return sqlSession.selectList("attractionmap.reviewattraction",map);
	}
	//리스트 조회순 가지고오기
	@Override
	public List<reViewListVO> reviewattractionhits(
			@RequestParam(value="start") int start,
			@RequestParam(value="end") int end,
			@RequestParam(value="title") String title){
		Map<String ,Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("title", title);
		return sqlSession.selectList("attractionmap.reviewattractionhits",map);
	}

	//파일이름 하나만 가지고오기 
	@Override
	public String filename(int spk) {
		return sqlSession.selectOne("attractionmap.attractionname",spk);
	}

	//댓글수 가지고오기
	@Override
	public int recount(int spk) {
		return sqlSession.selectOne("attractionmap.recount",spk);
	}

	//전채 댓글수 구하기
	@Override
	public int allCount(String title) {
		return sqlSession.selectOne("attractionmap.allcount",title);
	}

	@Override
	public List<tagrankVO> tagrank() {
		return sqlSession.selectList("attractionmap.tagrank");
	}



}
