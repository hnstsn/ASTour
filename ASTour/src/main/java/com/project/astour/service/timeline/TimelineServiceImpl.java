package com.project.astour.service.timeline;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.timeline.TimelineDAO;
import com.project.astour.model.dto.sns.tbl_snsVO;

@Service
public class TimelineServiceImpl implements TimelineService{

	@Inject
	TimelineDAO timelineDao;
	
	@Override
	public List<tbl_snsVO> contentView(int spk) {
		return timelineDao.contentView(spk);
	}
	
	

}
