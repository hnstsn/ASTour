package com.project.astour.controller.map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LocationSelect {
	
	
	
	
	@RequestMapping("locationSelect")
	public String locaSelect() {
		System.out.println("리퀘스트 매핑");
		return "map/locationSelectV";
	}

}
