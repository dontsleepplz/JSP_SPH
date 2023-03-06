package kr.project.sph.dto;

import java.util.Date;

public class MailVO {

	private int mmno;
	private String title;
	private String content;
	private int important;
	private Date regDate;
	private int writer;
	private int state;

	public int getMmno() {
		return mmno;
	}

	public void setMmno(int mmno) {
		this.mmno = mmno;
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

	public int getImportant() {
		return important;
	}

	public void setImportant(int important) {
		this.important = important;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getWriter() {
		return writer;
	}

	public void setWriter(int writer) {
		this.writer = writer;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

}
