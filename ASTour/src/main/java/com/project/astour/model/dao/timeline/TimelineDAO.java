package com.project.astour.model.dao.timeline;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.sns.tbl_snsVO;

public interface TimelineDAO {

	public List<tbl_snsVO> contentView(@RequestParam(value="spk") int spk);

	
}
