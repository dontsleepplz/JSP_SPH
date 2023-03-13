package kr.project.sph.dto;

import java.util.Date;
import java.util.List;

public class LibraryVO {
	private int lno;
	private String title;
	private String content;
	private int viewCnt;
	private Date regDate;
	private Date updateDate;
	private int writer;
	private List<LibraryAttachVO> attachList;

	public List<LibraryAttachVO> getAttachList() {
		return attachList;
	}

	public void setAttachList(List<LibraryAttachVO> attachList) {
		this.attachList = attachList;
	}

	public int getLno() {
		return lno;
	}

	public void setLno(int lno) {
		this.lno = lno;
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

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
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

	public int getWriter() {
		return writer;
	}

	public void setWriter(int writer) {
		this.writer = writer;
	}

}
