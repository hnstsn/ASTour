package com.project.astour.model.dto.member;

/*  ASTProfile table
	ppk : primary key, pfile : 사진명 
	ppath : 경로, mpk : ASTMember table의 pk
 */
public class ProfileVO {
	private int ppk;
	private String pfile;
	private String ppath;
	private int mpk;
	
	public int getPpk() {
		return ppk;
	}
	public void setPpk(int ppk) {
		this.ppk = ppk;
	}
	public String getPfile() {
		return pfile;
	}
	public void setPfile(String pfile) {
		this.pfile = pfile;
	}
	public String getPpath() {
		return ppath;
	}
	public void setPpath(String ppath) {
		this.ppath = ppath;
	}
	public int getMpk() {
		return mpk;
	}
	public void setMpk(int mpk) {
		this.mpk = mpk;
	}
	
}
