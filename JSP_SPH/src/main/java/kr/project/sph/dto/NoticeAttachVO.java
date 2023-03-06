package kr.project.sph.dto;

import java.util.Date;

public class NoticeAttachVO {

	private int nano;
	private String uploadPath;
	private String fileName;
	private String fileType;
	private int nno;
	private Date regDate;
	private int attacher;

	public int getNano() {
		return nano;
	}

	public void setNano(int nano) {
		this.nano = nano;
	}

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
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

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getAttacher() {
		return attacher;
	}

	public void setAttacher(int attacher) {
		this.attacher = attacher;
	}

}
