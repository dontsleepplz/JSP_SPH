package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.RequestVO;

public interface RequestDAO {

	List<RequestVO> selectSearchRequestList(SearchCriteria cri)throws SQLException;
	
	RequestVO selectRequestByRequestNum(int requestNum)throws SQLException;
	
	int selectSearchRequestListCount(SearchCriteria cri)throws SQLException;
	
	int selectRequestSequenceNextValue()throws SQLException;
	
	void insertRequest(RequestVO request)throws SQLException;
	
	void updateRequest(RequestVO request)throws SQLException;
	
	void deleteRequest(int requestNum)throws SQLException;
	
	
	
}
