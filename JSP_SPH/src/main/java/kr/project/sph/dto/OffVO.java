package kr.project.sph.dto;

import java.util.Date;

public class OffVO {

	private int offNum;
	private int mno;
	private Date startDate;
	private Date endDate;
	private Date regDate;
	private int state;

	public int getOffNum() {
		return offNum;
	}

	public void setOffNum(int offNum) {
		this.offNum = offNum;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

}
