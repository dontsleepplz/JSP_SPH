package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.OperationTeamVO;
import kr.project.sph.dto.OperationVO;

public interface OperationTeamDAO {

	List<OperationTeamVO> selectSearchOperationTeamList(SearchCriteria cri)throws SQLException;
	
	int selectSearchOperationTeamListCount(SearchCriteria cri)throws SQLException;

	OperationTeamVO selectOperationTeamByOTNO(int otno)throws SQLException;
	
	int selectOperationTeamSequenceNextValue()throws SQLException;
	
	void insertOperationTeam(OperationTeamVO operationTeam)throws SQLException;
	
	void updateOperationTeam(OperationTeamVO operationTeam)throws SQLException;
	
	void deleteOperationTeam(int otno)throws SQLException;
}
