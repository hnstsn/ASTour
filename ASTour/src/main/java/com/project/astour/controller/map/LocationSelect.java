package com.project.astour.controller.map;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.service.map.MapService;

@Controller
public class LocationSelect {
	
	@Inject
	MapService mapService;
	
	@RequestMapping("locationSelect")
	public String locaSelect(Model model) {
		System.out.println("리퀘스트 매핑");
		List<attraction_tbl> mapList = mapService.mapList();
		System.out.println("@@@@@@@@개수 : "+mapList.size());
		model.addAttribute("mapInfo", mapList);
		model.addAttribute("curPage", "map/locationSelectV.jsp");
		
		return "home";
	}

}
