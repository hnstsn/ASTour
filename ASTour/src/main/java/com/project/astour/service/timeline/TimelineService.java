package com.project.astour.service.timeline;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.sns.tbl_snsVO;

public interface TimelineService {

	
	public List<tbl_snsVO> contentView(@RequestParam(value="spk") int spk);

	
}
