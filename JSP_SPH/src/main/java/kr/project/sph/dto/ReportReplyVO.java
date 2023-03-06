package kr.project.sph.dto;

import java.util.Date;

public class ReportReplyVO {

	private int rrno;
	private String content;
	private Date regDate;
	private Date updateDate;
	private int rno;
	private int writer;

	public int getRrno() {
		return rrno;
	}

	public void setRrno(int rrno) {
		this.rrno = rrno;
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

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getWriter() {
		return writer;
	}

	public void setWriter(int writer) {
		this.writer = writer;
	}

}
