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
	public List<snsVO> snsList() {
		return sqlSession.selectList("sns.snsList"); 
	}

	@Override
	public void contentdelete(int spk) {

		sqlSession.delete("sns.deletecontent", spk);
	}

//	@Override
//	public List<MemberVO> memList() {
//		
//		return null;
//	}
}
