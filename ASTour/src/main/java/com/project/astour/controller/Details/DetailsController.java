package com.project.astour.controller.Details;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DetailsController {
	@RequestMapping("initDetails")
	public String init(Model model) {
		return "details/detailsView";
	}
}