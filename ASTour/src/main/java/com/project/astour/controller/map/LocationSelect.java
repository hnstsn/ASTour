package com.project.astour.controller.map;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.map.sigunVO;
import com.project.astour.service.map.MapService;

@Controller
public class LocationSelect {
	
	@Inject
	MapService mapService;
	
	@RequestMapping("locationSelect")
	public String locaSelect(Model model) {
		//명소 정보
		List<attraction_tbl> mapList = mapService.mapList();
		System.out.println("@@@@@@@@개수 : "+mapList.size());
		model.addAttribute("mapInfo", mapList);
		
		//시,군 이름
		List<sigunVO> sigunList = mapService.sigunList();
		model.addAttribute("sigunList", sigunList);
		
		model.addAttribute("curPage", "map/locationSelectV.jsp");
		return "home";
	}
	
	@RequestMapping("test222")
	@ResponseBody
	public List<sigunVO> f1(HttpServletResponse response,
			@RequestParam(value="name") String name,
			HttpServletRequest re, Model model){
		System.out.println(name);
		//List<sigunVO> gunList = mapService.gunList(name);
		//model.addAttribute("gunList", gunList);
		return mapService.gunList(name);
	}	
	

}
