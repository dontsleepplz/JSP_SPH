package kr.project.sph.dto;

import java.util.Date;
import java.util.List;

public class NoticeVO {

	private int nno;
	private String title;
	private String content;
	private int viewCnt;
	private Date regDate;
	private Date updateDate;
	private String writer;
	
	private List<NoticeVO> attachList;

	public List<NoticeVO> getAttachList() {
		return attachList;
	}

	public void setAttachList(List<NoticeVO> attachList) {
		this.attachList = attachList;
	}

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
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

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

}
