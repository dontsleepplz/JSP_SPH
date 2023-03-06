package kr.project.sph.dto;

import java.util.Date;

public class ToDoVO {

	private int tno;
	private String title;
	private String content;
	private String com;
	private String imp;
	private Date toDoDate;
	private Date toDoTime;
	private Date regDate;
	private int writer;

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
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

	public String getCom() {
		return com;
	}

	public void setCom(String com) {
		this.com = com;
	}

	public String getImp() {
		return imp;
	}

	public void setImp(String imp) {
		this.imp = imp;
	}

	public Date getToDoDate() {
		return toDoDate;
	}

	public void setToDoDate(Date toDoDate) {
		this.toDoDate = toDoDate;
	}

	public Date getToDoTime() {
		return toDoTime;
	}

	public void setToDoTime(Date toDoTime) {
		this.toDoTime = toDoTime;
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

}
