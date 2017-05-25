package com.project.astour.model.dto.member;
/*
create table ASTMember (
  mpk number primary key,
  mid varchar2(30) not null,
  mpw varchar2(20) not null,
  mname varchar2(20) not null,
  mphone varchar2(15),
);
 mpk : pk,  mid : id,  mpw : password,  mname : 이름,  mphone : 전화번호
 */
public class MemberVO {
	private int mpk;
	private String mid;
	private String mpw;
	private String mname;
	private String mphone;
	
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
}
