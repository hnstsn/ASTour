package com.project.astour.model.dto.calendar;

public class calendarVO {
	
	private int cpk; //기본키
	private String ctitle; //제목	
	private String startdate;//시작데이터
	private String enddate;	//끝 데이터
	private int mpk;	//참조키
	
	
	public int getCpk() {
		return cpk;
	}
	public void setCpk(int cpk) {
		this.cpk = cpk;
	}
	public String getCtitle() {
		return ctitle;
	}
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public int getMpk() {
		return mpk;
	}
	public void setMpk(int mpk) {
		this.mpk = mpk;
	}
	
	

}
