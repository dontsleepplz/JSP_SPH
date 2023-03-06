package kr.project.sph.dto;

public class DepartVO {

	private String departCode;
	private String name;
	private String phone;
	private int state;
	private String upCode;
	private int memberMno;
	private String position;

	public String getDepartCode() {
		return departCode;
	}

	public void setDepartCode(String departCode) {
		this.departCode = departCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getUpCode() {
		return upCode;
	}

	public void setUpCode(String upCode) {
		this.upCode = upCode;
	}

	public int getMemberMno() {
		return memberMno;
	}

	public void setMemberMno(int memberMno) {
		this.memberMno = memberMno;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

}
