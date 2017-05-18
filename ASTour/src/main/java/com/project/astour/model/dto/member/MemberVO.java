package com.project.astour.model.dto.member;
/*
create table ASTMember (
  mpk number primary key,
  mid varchar2(30) not null,
  mpw varchar2(20) not null,
  mname varchar2(20) not null,
  mphone varchar2(15),
  mfile varchar2(20),
  mfile2 varchar2(30),
  mpath varchar2(50)
);
 mpk : pk,  mid : id,  mpw : password,  mname : 이름,  mphone : 전화번호
 mfile : 사진 이름,   mfile2 : 저장소에 구분되는 사진 이름,  mpath : 저장되는 경로
 */
public class MemberVO {
	private int mpk;
	private String mid;
	private String mpw;
	private String mname;
	private String mphone;
	private String mfile;
	private String mfile2;
	private String mpath;
	
	public int getMpk() {
		return mpk;
	}
	public void setMpk(int mpk) {
		this.mpk = mpk;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMfile() {
		return mfile;
	}
	public void setMfile(String mfile) {
		this.mfile = mfile;
	}
	public String getMfile2() {
		return mfile2;
	}
	public void setMfile2(String mfile2) {
		this.mfile2 = mfile2;
	}
	public String getMpath() {
		return mpath;
	}
	public void setMpath(String mpath) {
		this.mpath = mpath;
	}
}
