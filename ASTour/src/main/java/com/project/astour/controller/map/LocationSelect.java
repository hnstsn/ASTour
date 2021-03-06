package com.project.astour.controller.map;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ListModel;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.model.dto.map.GpsRecord;
import com.project.astour.model.dto.map.sigunVO;
import com.project.astour.service.attraction.AttractionService;
import com.project.astour.service.map.MapService;

@Controller
public class LocationSelect {
	
	@Inject
	MapService mapService;
	@Inject
	AttractionService attractionService;
	
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
	
	//gps 페이지
	@RequestMapping("gpsSelectname")
	public String gpsSelete(Model model,
			@RequestParam(value="mpk") int mpk){
		List<GpsRecord> list = mapService.gpsSelectname(mpk);
		model.addAttribute("list",list);
		model.addAttribute("curPage", "map/gpsSelectView.jsp");
		return "home";
	}
	//gps 길 조회 
	@RequestMapping("gpsSelect")
	@ResponseBody
	public List<GpsRecord> f5(Model model,
			@RequestParam(value="pk") int pk,
			@RequestParam(value="title") String title){
		System.out.println("확인용");
		System.out.println(title);
		System.out.println(pk);
		System.out.println("끝");
		return mapService.gpsSelect(title, pk);
	}

	@RequestMapping("selectBox")
	@ResponseBody
	public List<sigunVO> f1(HttpServletResponse response,
			@RequestParam(value="name" ) String name,
			HttpServletRequest re, Model model){
			
		return mapService.gunList(name);
	}	
	
	@RequestMapping("searchLocation")
	@ResponseBody
	public List<attraction_tbl> f2(HttpServletResponse response,
			attraction_tbl vo) {
		
	return mapService.searchLocation(vo);
	}
	
	@RequestMapping("allLocation")
	@ResponseBody
	public List<attraction_tbl> f3(HttpServletResponse response){
		return attractionService.attractionList(); 
	}
	
}
