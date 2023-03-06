package kr.project.sph.dto;

import java.util.Date;

public class ReportAttachVO {

	private int aano;
	private String fileName;
	private String fileType;
	private Date regDate;
	private int rno;
	private String uploadPath;

	public int getAano() {
		return aano;
	}

	public void setAano(int aano) {
		this.aano = aano;
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

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

}
