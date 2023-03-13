package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.ScheduleVO;

public interface ScheduleDAO {

	List<ScheduleVO> selectSearchScheduleList(SearchCriteria cri)throws SQLException;
	
	int selectSearchScheduleListCount(SearchCriteria cri)throws SQLException;

	ScheduleVO selectScheduleBySNO(int sno)throws SQLException;
	
	int selectScheduleSequenceNextValue()throws SQLException;
	
	void insertSchedule(ScheduleVO schedule)throws SQLException;
	
	void updateSchedule(ScheduleVO schedule)throws SQLException;
	
	void deleteSchedule(int sno)throws SQLException;
}
