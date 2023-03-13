package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.WardRecordVO;

public interface WardRecordDAO {
	List<WardRecordVO> selectSearchWardRecordList(SearchCriteria cri)throws SQLException;
	
	int selectSearchWardRecordListCount(SearchCriteria cri)throws SQLException;

	WardRecordVO selectWardRecordByWardRecordNumber(int wardRecordNumber)throws SQLException;
	
	int selectWardRecordSequenceNextValue()throws SQLException;
	
	void insertWardRecord(WardRecordVO wardRecord)throws SQLException;
	
	void updateWardRecord(WardRecordVO wardRecord)throws SQLException;
	
	void deleteWardRecord(int wardRecordNumber)throws SQLException;

}
