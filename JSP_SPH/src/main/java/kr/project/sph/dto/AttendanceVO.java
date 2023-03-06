package kr.project.sph.dto;

import java.util.Date;

public class AttendanceVO {

	private int attendanceCode;
	private Date attendanceWork;
	private Date attendanceLeave;
	private int attendanceOver;
	private int mno;

	public int getAttendanceCode() {
		return attendanceCode;
	}

	public void setAttendanceCode(int attendanceCode) {
		this.attendanceCode = attendanceCode;
	}

	public Date getAttendanceWork() {
		return attendanceWork;
	}

	public void setAttendanceWork(Date attendanceWork) {
		this.attendanceWork = attendanceWork;
	}

	public Date getAttendanceLeave() {
		return attendanceLeave;
	}

	public void setAttendanceLeave(Date attendanceLeave) {
		this.attendanceLeave = attendanceLeave;
	}

	public int getAttendanceOver() {
		return attendanceOver;
	}

	public void setAttendanceOver(int attendanceOver) {
		this.attendanceOver = attendanceOver;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

}
