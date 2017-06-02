package com.project.astour.model.dao.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.snsVO;

@Repository
public class SnsDAOImpl implements SnsDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<snsVO> snsList(int start,int end,int mpk) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("mpk", mpk);
		
		return sqlSession.selectList("sns.snsList",map); 
	}

	@Override
	public MemberVO memList(int mpk) {
		return sqlSession.selectOne("sns.memList",mpk);
	}

	//사람찾기
	@Override
	public List<MemberVO> peopleList(String mname){
		return sqlSession.selectList("sns.peopleList",mname);
	}
	
	@Override
	public List<snsVO> reviewSelect(Map<String, Object> map) {
		return sqlSession.selectList("sns.reviewSelect", map);
	}
	
	@Override
	public SnsFileVO snsFileList(int spk){
		return sqlSession.selectOne("sns.snsfile",spk);
	}

	// 게시글 작성
	@Override
	public void insBrd(snsVO sns) throws Exception {
		sqlSession.insert("sns.insBrd", sns);
	}

	// 게시글 파일에 필요한 spk
	@Override
	public int getSpk() {
		return sqlSession.selectOne("sns.getSpk");
	}
	
	// 해당하는 게시글의 파일 첨부
	@Override
	public void insBrdFiles(SnsFileVO sFile) {
		sqlSession.insert("sns.insBrdFiles", sFile);
	}

	// 게시물 갯수 조회
	@Override
	public int count(int mpk) {
		return sqlSession.selectOne("sns.count", mpk);
	}

	@Override
	public int countSsort(Map<String, Object> map) {
		return sqlSession.selectOne("sns.countSsort",map);
	}


}
