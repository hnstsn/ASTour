package com.project.astour.model.dto.mypage;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class snsVO {

	private int spk; 			// pk
	private String stitle; 		// 제목
	private String scontent; 	// 내용
	private Date sdate; 		// 날짜 시간
	private int mpk; 			// 작성자얻기 위한 fk
	private String stag; 		// 장소태그
	private String ssort; 		// 리뷰/내게시물 구분
	private int shits;			// 조회수
	private int slikes;			// 좋아요수
	private MultipartFile[] files;	// 파일
	private int reCnt;               // 댓글 개수
	
	
	public int getReCnt() {
		return reCnt;
	}

	public void setReCnt(int reCnt) {
		this.reCnt = reCnt;
	}

	private String sct; // scontent 간략한글자 10글자만 뽑아내귀
	
	public String getSct() {
		return sct;
	}

	public void setSct(String sct) {
		this.sct = sct;
	}

	public int getShits() {
		return shits;
	}

	public void setShits(int shits) {
		this.shits = shits;
	}

	public int getSlikes() {
		return slikes;
	}

	public void setSlikes(int slikes) {
		this.slikes = slikes;
	}

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

	public MultipartFile[] getFiles() {
		return files;
	}

	public void setFiles(MultipartFile[] files) {
		this.files = files;
	}

}