package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.AttendanceVO;

public interface AttendanceDAO {
	
	List<AttendanceVO> selectSearchAttendanceList(SearchCriteria cri) throws SQLException;
	
	void insertAttendanceWork(AttendanceVO attendance) throws SQLException;
	void insertAttendanceLeave(AttendanceVO attendance) throws SQLException;
	

}
