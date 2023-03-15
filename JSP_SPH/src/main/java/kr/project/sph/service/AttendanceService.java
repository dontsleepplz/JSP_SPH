package kr.project.sph.service;

import kr.project.sph.dto.AttendanceVO;

public interface AttendanceService {
	
	AttendanceVO getaAttendance(int attendanceCode) throws Exception;
	
	void regist(AttendanceVO attendance) throws Exception;

}
