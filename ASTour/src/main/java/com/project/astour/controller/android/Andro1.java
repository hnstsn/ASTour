package com.project.astour.controller.android;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.astour.model.dto.attraction.attraction_tbl;
import com.project.astour.service.android.AndroidService;
import com.project.astour.service.attraction.AttractionService;



@Controller
public class Andro1 {
	
	@Inject
	AttractionService attractionService;
	
	@Inject
	AndroidService androidservice;
	
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
	
	//AST : 2. XML 분석방식 --현재 안씀
	
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
	
	//안드로이드 서비스에서 GPS값을 보내준다
	
	@ResponseBody
	@RequestMapping(value="gpsRecord",
	produces="application/json; charset=utf-8")
	public void gpsRecording( String label_record, String latitude_record, String longitude_record, String time_record, String mpk, String accuracy_record){
		androidservice.gpsRecord( label_record,latitude_record,longitude_record,time_record,mpk,accuracy_record);
	}
	
	
	//tMap 연결
	@ResponseBody
	@RequestMapping(value="tmap",
	produces="application/json; charset=utf-8")
	public JSONObject tmapData(String mylatitude, String mylongitude, String latitude, String longitude){
		JSONObject jsonObj = null;
		try{
		URL url = new URL("https://apis.skplanetx.com/tmap/routes/pedestrian?version=1");       // URL 설정

		HttpURLConnection http = (HttpURLConnection) url.openConnection();   // 접속 
		//-------------------------- 
		//   전송 모드 설정 - 기본적인 설정이다 
		//-------------------------- 
		http.setDefaultUseCaches(false);                                            
		http.setDoInput(true);                         // 서버에서 읽기 모드 지정 
		http.setDoOutput(true);                       // 서버로 쓰기 모드 지정  
		http.setRequestMethod("POST");         // 전송 방식은 POST 

		// 서버에게 웹에서 <Form>으로 값이 넘어온 것과 같은 방식으로 처리하라는 걸 알려준다 


		http.setRequestProperty("appKey", "f3dd888d-29eb-3935-bc68-7bc628c1a6fe");
		http.setRequestProperty("Accept-Language", "ko");
		http.setRequestProperty("content-type", "application/x-www-form-urlencoded");

		//-------------------------- 
		//   서버로 값 전송 
		//-------------------------- 

		String buffer2 = "startX="+mylongitude+"&startY="+mylatitude+"&angle=1&speed=60& endPoiId=334852&endRpFlag=8&endX="+longitude+"&endY="+latitude+"&reqCoordType=WGS84GEO&gpsTime=15000&startName=%EC%B6%9C%EB%B0%9C&endName=%EB%B3%B8%EC%82%AC&searchOption=0&resCoordType=WGS84GEO";
		//37.494512, 127.027651      // 37.497914, 127.027651 //T맵은 WGS84 가 없다.  WGS84GEO 이다.
		

		DataOutputStream wr = new DataOutputStream(http.getOutputStream());
		wr.writeBytes(buffer2);
		wr.flush();
		wr.close();

		BufferedReader br;
		String jsondata;

		if (http.getResponseCode() == 200) {
			br = new BufferedReader(new InputStreamReader(http.getInputStream()));
			// Success
			// Further processing here
		} else {
			br = new BufferedReader(new InputStreamReader(http.getErrorStream()));
			// Error handling code goes here
		}
		String inputLine;
		StringBuffer response = new StringBuffer();
		while ((inputLine = br.readLine()) != null) {
			response.append(inputLine);
		}
		br.close();
		jsondata=response.toString();
		//System.out.println(response.toString());

		JSONParser parser = new JSONParser();
		jsonObj = (JSONObject) parser.parse( jsondata );
		
		}catch(Exception e){
			e.printStackTrace();
		}
	
		
		return jsonObj;
	}
	
}
