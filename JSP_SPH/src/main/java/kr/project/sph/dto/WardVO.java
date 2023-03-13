package kr.project.sph.dto;

import java.util.List;

public class WardVO {

	private int wno;
	private int state;
	private String phone;
	List<WardRecordVO> recordList;

	public List<WardRecordVO> getRecordList() {
		return recordList;
	}

	public void setRecordList(List<WardRecordVO> recordList) {
		this.recordList = recordList;
	}

	public int getWno() {
		return wno;
	}

	public void setWno(int wno) {
		this.wno = wno;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
