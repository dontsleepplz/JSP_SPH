package kr.project.sph.dto;

import java.util.Date;

public class ReportVO {

	private int rno;
	private String title;
	private String content;
	private Date regDate;
	private int cnt;
	private Date updateDate;
	private int mno;
	private String commonDode;

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getCommonDode() {
		return commonDode;
	}

	public void setCommonDode(String commonDode) {
		this.commonDode = commonDode;
	}

}
