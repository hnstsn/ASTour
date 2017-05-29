package com.project.astour.service.timeline;

import java.util.List;

import javax.inject.Inject;
import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.project.astour.model.dao.timeline.TimelineDAO;
import com.project.astour.model.dto.mypage.SnsFileVO;
import com.project.astour.model.dto.mypage.SnsReplyVO;
import com.project.astour.model.dto.mypage.snsVO;

@Service
public class TimelineServiceImpl implements TimelineService{

	@Inject
	TimelineDAO timelineDao;
	
	@Override
	public List<snsVO> contentView(int spk) {
		return timelineDao.contentView(spk);
	}

	@Override
	public List<SnsFileVO> contentViewFile(int spk) {
		return timelineDao.contentViewFile(spk);
	}

	@Override
	public void reply(SnsReplyVO vo) {
		timelineDao.reply(vo);
	}

	@Override
	public List<SnsReplyVO> replyView(int spk) {
		return timelineDao.replyView(spk);
	}
	
	// 조회수
	@Override
	public void hitsView(int spk, HttpSession session) {
		long update_time=0;
		// 세션에 저장된 조회시간 검색
		if(session.getAttribute("update_time_"+spk)!=null){
			update_time = (Long) session.getAttribute("update_time_"+spk);
			
		}
		// 시스템의 현재 시간
		long current_time = System.currentTimeMillis();
		// 일정 시간이 경과 후 조회수 증가 처리
		if(current_time - update_time > 5*1000){
			timelineDao.hitsView(spk);
			session.setAttribute("update_time_"+spk, current_time);
		}
	}

	@Override
	public SnsReplyVO count(int spk) {
		return timelineDao.count(spk);
	}
	
}
