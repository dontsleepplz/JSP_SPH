package kr.project.sph.dto;

public class RequestVO {
	
	private int RequestNum;
	private int tomno;
	private int cno;
	private int frommno;
	public int getRequestNum() {
		return RequestNum;
	}
	public void setRequestNum(int requestNum) {
		RequestNum = requestNum;
	}
	public int getTomno() {
		return tomno;
	}
	public void setTomno(int tomno) {
		this.tomno = tomno;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getFrommno() {
		return frommno;
	}
	public void setFrommno(int frommno) {
		this.frommno = frommno;
	}
	
	

}
