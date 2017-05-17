package com.project.astour.controller.attraction;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AttractionController {
	
	@RequestMapping("initAttr")
	public String init() {
		return "attraction/joinattraction";
	}
	
	@RequestMapping("test111")
	public void func( HttpServletResponse response )throws Exception {

		response.setContentType("text/xml");
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();
       
        String s1 = "{\"name\":\".event\"}";

        writer.write(s1);
        writer.flush();
        writer.close();
        
	} 
}