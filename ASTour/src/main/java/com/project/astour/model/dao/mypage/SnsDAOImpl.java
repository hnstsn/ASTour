package com.project.astour.model.dao.mypage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.member.MemberVO;
import com.project.astour.model.dto.mypage.snsVO;

@Repository
public class SnsDAOImpl implements SnsDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<snsVO> snsList(int mpk) {
		return sqlSession.selectList("sns.snsList",mpk); 
	}

	@Override
	public void contentDelete(int spk) {

		sqlSession.delete("sns.deleteContent", spk);
	}

	@Override
	public List<MemberVO> memList(int mpk) {
		return sqlSession.selectList("sns.memList",mpk);
	}

	//사람찾기
	@Override
	public List<MemberVO> pepoleList(String mname){
		return sqlSession.selectList("sns.pepoleList",mname);
	}
	
	@Override
	public List<snsVO> reviewSelect(int mpk) {
		return sqlSession.selectList("sns.reviewSelect",mpk);
	}

	// 게시글 작성
	@Override
	public void insBrd(snsVO sns) throws Exception {
		sqlSession.insert("sns.insBrd", sns);
	}

	// 해당하는 게시글의 파일 첨부
	@Override
	public void insBrdFiles(String sffile) {
		sqlSession.insert("sns.insBrdFiles", sffile);
	}

}
