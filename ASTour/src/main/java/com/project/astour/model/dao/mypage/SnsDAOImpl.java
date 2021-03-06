package com.project.astour.model.dao.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.Profile;
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
		List<MemberVO> list = sqlSession.selectList("sns.memList",mpk);
		return list.get(0);
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

	@Override
	public List<snsVO> rankList() {
		return sqlSession.selectList("sns.rankList");
	}
	

	//랭크 리스트 해당하는 파일 하나 가지고오기
	@Override
	public String rankListfile(int spk) {
		return sqlSession.selectOne("sns.rankListfile",spk);
	}
	
	//랭크 이미지 없을때
	@Override
	public String noimage(String stag) {
		return sqlSession.selectOne("sns.noimage",stag);
	}

	//게시물 댓글 갯수 조회
	@Override
	public int replycountList(Map<String, Object> map) {
		return sqlSession.selectOne("sns.replycountList",map);
	}

	//사진첩(프로필) 정보 가지고오기
	@Override
	public List<Profile> profileList(int mpk) {
		return sqlSession.selectList("sns.profileList",mpk);
	}
	//사진첩(게시판) 정보 가지고오기
	@Override
	public List<Profile> blogList(int mpk) {
		return sqlSession.selectList("sns.blogList",mpk);
	}

	

	
}
