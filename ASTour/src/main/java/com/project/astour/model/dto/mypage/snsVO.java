package com.project.astour.model.dto.mypage;

import java.util.Date;

public class snsVO {
	
	private int spk; // 
	private String stitle; // 제목
	private String scontent; // 내용
	private Date sdate; // 날짜 시간
	private String sfile; // 이름
	private String sfile2; // 이름2
	private String spath; // 경로
	private int mpk; // 작성자???????? 승완이형한테 물어보셈요!
	private String stag; // 장소태그
	private String ssort; // 리뷰/내게시물 구분
	
	public int getSpk() {
		return spk;
	}
	public void setSpk(int spk) {
		this.spk = spk;
	}
	public String getStitle() {
		return stitle;
	}
	public void setStitle(String stitle) {
		this.stitle = stitle;
	}
	public String getScontent() {
		return scontent;
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	public String getSfile() {
		return sfile;
	}
	public void setSfile(String sfile) {
		this.sfile = sfile;
	}
	public String getSfile2() {
		return sfile2;
	}
	public void setSfile2(String sfile2) {
		this.sfile2 = sfile2;
	}
	public String getSpath() {
		return spath;
	}
	public void setSpath(String spath) {
		this.spath = spath;
	}
	public int getMpk() {
		return mpk;
	}
	public void setMpk(int mpk) {
		this.mpk = mpk;
	}
	public String getStag() {
		return stag;
	}
	public void setStag(String stag) {
		this.stag = stag;
	}
	public String getSsort() {
		return ssort;
	}
	public void setSsort(String ssort) {
		this.ssort = ssort;
	}
	
	
}
