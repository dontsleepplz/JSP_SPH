package kr.project.sph.dto;

import java.util.Date;

public class LibraryAttachVO {

	private int lano;
	private String uploadPath;
	private String fileName;
	private String fileType;
	private int lno;
	private Date regDate;
	private int attacher;

	public int getLano() {
		return lano;
	}

	public void setLano(int lano) {
		this.lano = lano;
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

	public int getLno() {
		return lno;
	}

	public void setLno(int lno) {
		this.lno = lno;
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
