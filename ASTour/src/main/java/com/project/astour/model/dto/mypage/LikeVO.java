package com.project.astour.model.dto.mypage;

public class LikeVO {

	private int mpk;
	private int spk;
	
	public LikeVO() {
	}
	
	public LikeVO(int mpk, int spk) {
		this.mpk = mpk;
		this.spk = spk;
	}
	
	public int getMpk() {
		return mpk;
	}
	public void setMpk(int mpk) {
		this.mpk = mpk;
	}
	public int getSpk() {
		return spk;
	}
	public void setSpk(int spk) {
		this.spk = spk;
	}
	
}
