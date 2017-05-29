package com.project.astour.model.dto.mypage;

import java.util.Date;

public class SnsReplyVO {
	
	private int rpk;
	private String rcontent;
	private Date rtime;
	private int spk;
	private int mpk;
	
	//조인으로인한 
	private String pfile;
	private String ppath;
	private String mname;
	private String mid;
	
	//카운트
	private int ct;
	
	
	
	public int getCt() { return ct; }
	public void setCt(int ct) { this.ct = ct; }
	
	public String getPfile() { return pfile; }
	public void setPfile(String pfile) { this.pfile = pfile; }
	public String getPpath() { return ppath; }
	public void setPpath(String ppath) { this.ppath = ppath; }
	public String getMname() { return mname; }
	public void setMname(String mname) { this.mname = mname; }
	public String getMid() { return mid; }
	public void setMid(String mid) { this.mid = mid; }
	
	public int getRpk() { return rpk; }
	public void setRpk(int rpk) { this.rpk = rpk; }
	public String getRcontent() { return rcontent; }
	public void setRcontent(String rcontent) { this.rcontent = rcontent; }
	public Date getRtime() { return rtime; }
	public void setRtime(Date rtime) { this.rtime = rtime; }
	public int getSpk() { return spk; }
	public void setSpk(int spk) { this.spk = spk; }
	public int getMpk() { return mpk; }
	public void setMpk(int mpk) { this.mpk = mpk; }
}
