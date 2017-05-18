package com.project.astour.controller.Details;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class DetailsController {
	@RequestMapping("initDetails")
	public String init(Model model,
			@RequestParam(value="name") String name) {
		
		System.out.println(name);
		
		return "details/detailsView";
	}
}