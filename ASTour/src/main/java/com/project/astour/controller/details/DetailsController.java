package com.project.astour.controller.details;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.service.details.DetailsSeration;


@Controller
public class DetailsController {

	@Inject
	DetailsSeration detailsSeration;
	
	@RequestMapping("initDetails")
	public String init(Model model,
			@RequestParam(value="name") String ATITLE) {

		List<attraction_tbl> detailsList = detailsSeration.detailsList(ATITLE);
		model.addAttribute("list", detailsList);

		return "details/detailsView";
	}
}