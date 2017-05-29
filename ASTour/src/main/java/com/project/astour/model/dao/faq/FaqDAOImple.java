package com.project.astour.model.dao.faq;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.astour.model.dto.faq.faqVO;

@Repository
public class FaqDAOImple implements FaqDAO{
	
	@Inject
	SqlSession sqlSession;

	@Override
	public List<faqVO> faqList() {
		return sqlSession.selectList("faq.faqList");
	}
	
	
}
