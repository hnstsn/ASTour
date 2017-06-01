package com.project.astour.controller.android;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.service.attraction.AttractionService;

@Controller
public class Android_send {

	@Inject
	AttractionService attractionService;
	
	@ResponseBody
	@RequestMapping(value="andro_send",
produces="application/json; charset=utf-8")
	public JSONObject andro_send(double deviceLatitude, double deviceLongitude){
		
		//deviceLatitude & deviceLongitude 활용 예정
		
		List<attraction_tbl> items = attractionService.attractionList();
		JSONObject jMain = new JSONObject();
		JSONArray jArray = new JSONArray();
		
		for (int i = 0; i < items.size(); i++) {
			attraction_tbl dto = new attraction_tbl();
			JSONObject row = new JSONObject();
			
			dto = items.get(i);
			
			row.put("atitle", dto.getAtitle());
			row.put("alatitude", dto.getAlatitude());
			row.put("alongitude", dto.getAlongitude());
			
			jArray.add(row);
			dto=null;
			row=null;
		}
		jMain.put("send_Data", jArray);
		
		
		return jMain;
	}
	
}
