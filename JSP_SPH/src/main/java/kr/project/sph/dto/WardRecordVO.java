package kr.project.sph.dto;

import java.util.Date;

public class WardRecordVO {

	private int wardRecordNumber;
	private int wardRecordWardNum;
	private int wardRecordMno;
	private Date wardRecordDate;

	public int getWardRecordNumber() {
		return wardRecordNumber;
	}

	public void setWardRecordNumber(int wardRecordNumber) {
		this.wardRecordNumber = wardRecordNumber;
	}

	public int getWardRecordWardNum() {
		return wardRecordWardNum;
	}

	public void setWardRecordWardNum(int wardRecordWardNum) {
		this.wardRecordWardNum = wardRecordWardNum;
	}

	public int getWardRecordMno() {
		return wardRecordMno;
	}

	public void setWardRecordMno(int wardRecordMno) {
		this.wardRecordMno = wardRecordMno;
	}

	public Date getWardRecordDate() {
		return wardRecordDate;
	}

	public void setWardRecordDate(Date wardRecordDate) {
		this.wardRecordDate = wardRecordDate;
	}

}
