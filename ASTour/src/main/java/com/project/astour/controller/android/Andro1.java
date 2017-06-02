package com.project.astour.controller.android;

import java.util.List;

import javax.inject.Inject;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.service.attraction.AttractionService;

@Controller
public class Andro1 {
	@Inject
	AttractionService attractionService;
	
	//안드로이드용
	//AST : 1. JSON방식
	
	@ResponseBody
	@RequestMapping(value="andro2",
	produces="application/json; charset=utf-8")
	public JSONObject attractionInfo(){
		List<attraction_tbl> items = attractionService.attractionList();
		JSONObject jsonMain = new JSONObject();
		System.out.println(items);
		JSONArray jArray = new JSONArray();
		for (int i = 0; i < items.size(); i++) {
			attraction_tbl dto = items.get(i);
			JSONObject row = new JSONObject();
			
			row.put("atitle", dto.getAtitle());
			row.put("alatitude", dto.getAlatitude());
			row.put("alongitude", dto.getAlongitude());	
			jArray.add(i, row);
			
		}
		
		jsonMain.put("sendData", jArray);
		
		return jsonMain;
	}
	
	//AST : 2. XML 분석방식
	
	@ResponseBody
	@RequestMapping(value="andro1", 
	produces="application/json; charset=utf-8")
	public String markerLocation(){
		List<attraction_tbl> markers = attractionService.attractionList(); 
		System.out.println("마커즈"+markers);
		
		Element root = new Element("all");
		Document doc = new Document(root);
		doc.setRootElement(root.detach());
		String result="";
		for(attraction_tbl attraction : markers){
			Element data = new Element("attraction");
			Element alatitude = new Element("alatitude");
			alatitude.setText(attraction.getAlatitude()+"");
			
			Element alongitude = new Element("alongitude");
			alongitude.setText(attraction.getAlongitude()+"");
			
			data.addContent(alatitude);
			data.addContent(alongitude);
			
			root.addContent(data);
		}
		
		//xml 출력을 위한 객체
		XMLOutputter xout = new XMLOutputter();
		Format f=xout.getFormat();	//xml 문서의 포맷설정
		f.setEncoding("utf-8");		//인코딩 방식 설정
		f.setIndent("\t");			//들여쓰기 문자
		f.setLineSeparator("\r\n");	//줄바꿈 문자
		f.setTextMode(Format.TextMode.TRIM);	//공백제거
		xout.setFormat(f);			//문서포맷 적용	
		//Document를 스트링으로 변환		
		result=xout.outputString(doc);
		
		
		return result;
	}
}
