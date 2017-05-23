package com.project.astour.service.timeline;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.mypage.snsVO;

public interface TimelineService {

	
	public List<snsVO> contentView(@RequestParam(value="spk") int spk);

	
}
