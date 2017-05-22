package com.project.astour.controller.write;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class writeController {

	@RequestMapping("write")
	public String init(){
		return "kkh";
	}

}
