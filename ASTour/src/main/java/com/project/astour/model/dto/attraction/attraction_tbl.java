package com.project.astour.model.dto.attraction;


/*CREATE TABLE attraction_tbl(
		  attpk       NUMBER PRIMARY KEY, --기본키
		  atitle      VARCHAR2(30),       --제목(행사명)
		  asort       VARCHAR2(4),        --행사OR명소 구분자
		  aimage      VARCHAR2(20),       --이미지명
		  ahomepage   VARCHAR2(50),       --인터넷주소
		  acity       VARCHAR2(20),       --시
		  agu         VARCHAR2(20),       --구  
		  aaddress    VARCHAR2(70),       --상세주소
		  atel        VARCHAR2(20),       --문의전화
		  aaction     VARCHAR2(20),       --이벤트 (삭제 예정!)
		  aintro      VARCHAR2(500),      --소개
		  acontent    VARCHAR2(4000),     --실내용
		  alatitude   number,             -- 위도
			alogitude   number              -- 경도
		);*/

public class attraction_tbl {

	int attpk;         	//pk
	String atitle;     	//제목
	String asort;     	//행사or명소
	String aimage;    	//이미지명
	String ahomepage; 	//인터넷주소
	String acity;  		//시	
	String agu;        	//구
	String aaddress;  	//상세주소
	String atel;  		//문의전화
	String aintro;  	//소개
	String acontent; 	//실내용
	double alatitude;	//위도
	double alongitude; 	//경도


	public int getAttpk() { return attpk; }
	public void setAttpk(int attpk) { this.attpk = attpk; }
	public String getAtitle() { return atitle; }
	public void setAtitle(String atitle) { this.atitle = atitle; }
	public String getAsort() { return asort; }
	public void setAsort(String asort) { this.asort = asort; }
	public String getAimage() { return aimage; }
	public void setAimage(String aimage) { this.aimage = aimage; }
	public String getAhomepage() { return ahomepage; }
	public void setAhomepage(String ahomepage) { this.ahomepage = ahomepage; }
	public String getAcity() { return acity; }
	public void setAcity(String acity) { this.acity = acity; }
	public String getAgu() { return agu; }
	public void setAgu(String agu) { this.agu = agu; }
	public String getAaddress() { return aaddress; }
	public void setAaddress(String aaddress) { this.aaddress = aaddress; }
	public String getAtel() { return atel; }
	public void setAtel(String atel) { this.atel = atel; }
	public String getAintro() { return aintro; }
	public void setAintro(String aintro) { this.aintro = aintro; }
	public String getAcontent() { return acontent; }
	public void setAcontent(String acontent) { this.acontent = acontent; }
	public double getAlatitude() { return alatitude; }
	public void setAlatitude(double alatitude) { this.alatitude = alatitude; }
	public double getAlongitude() { return alongitude; }
	public void setAlongitude(double alongitude) { this.alongitude = alongitude; }
	





}
