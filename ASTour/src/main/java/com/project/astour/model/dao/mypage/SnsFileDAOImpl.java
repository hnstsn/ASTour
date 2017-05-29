package com.project.astour.model.dao.mypage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.mypage.SnsFileVO;

@Repository
public class SnsFileDAOImpl implements SnsFileDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public SnsFileVO snsFileList(int spk){
		return sqlSession.selectOne("sns.snsfile",spk);
	}
}
