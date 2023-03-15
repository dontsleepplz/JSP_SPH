package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.AttendanceVO;

public class AttendanceDAOImpl implements AttendanceDAO{
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<AttendanceVO> selectSearchAttendanceList(SearchCriteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		
		List<AttendanceVO> attendanceList = null;
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		attendanceList = session.selectList("Attendance-Mapper.selectSearchAttendanceList", cri, rowBounds);
		return attendanceList;
	}

	@Override
	public void insertAttendanceWork(AttendanceVO attendance) throws SQLException {
		session.update("Attendance-Mapper.insertAttendanceWork", attendance);
		
	}

	@Override
	public void insertAttendanceLeave(AttendanceVO attendance) throws SQLException {
		session.update("Attendance-Mapper.insertAttendanceLeave", attendance);
		
	}

}
