package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.OperationVO;

public interface OperationDAO {

	List<OperationVO> selectSearchOperationList(SearchCriteria cri)throws SQLException;
	
	int selectSearchOperationListCount(SearchCriteria cri)throws SQLException;

	OperationVO selectOperationByONO(int ono)throws SQLException;
	
	int selectOperationSequenceNextValue()throws SQLException;
	
	void insertOperation(OperationVO operation)throws SQLException;
	
	void updateOperation(OperationVO operation)throws SQLException;
	
	void deleteOperation(int ono)throws SQLException;
}
