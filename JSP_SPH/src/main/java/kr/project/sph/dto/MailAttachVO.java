package kr.project.sph.dto;

import java.util.Date;

public class MailAttachVO {

	private int manno;
	private int mnno;
	private String fileName;
	private String fileType;
	private String fileUploadPath;
	private int attacher;
	private Date regDate;

	public int getManno() {
		return manno;
	}

	public void setManno(int manno) {
		this.manno = manno;
	}

	public int getMnno() {
		return mnno;
	}

	public void setMnno(int mnno) {
		this.mnno = mnno;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}

	public int getAttacher() {
		return attacher;
	}

	public void setAttacher(int attacher) {
		this.attacher = attacher;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

}
