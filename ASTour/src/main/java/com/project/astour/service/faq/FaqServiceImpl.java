package com.project.astour.service.faq;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.faq.FaqDAO;
import com.project.astour.model.dto.faq.faqVO;

@Service
public class FaqServiceImpl implements FaqService{
	
	@Inject
	FaqDAO faqDAO;

	@Override
	public List<faqVO> faqList() {
		return faqDAO.faqList();
	}
	
}
