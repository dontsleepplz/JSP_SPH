package kr.project.sph.dao;

import java.sql.SQLException;
import java.util.List;

import kr.project.sph.command.SearchCriteria;
import kr.project.sph.dto.WardVO;

public interface WardDAO {
	
	List<WardVO> selectSearchWardList(SearchCriteria cri)throws SQLException;
	
	int selectSearchWardListCount(SearchCriteria cri)throws SQLException;
	
	WardVO selectWardByWNO(int wno)throws SQLException;
	
	int selectWardSequenceNextValue()throws SQLException;
	
	void insertWard(WardVO ward)throws SQLException;
	
	void updateWard(WardVO ward)throws SQLException;
	
	void deleteWard(int wno)throws SQLException;

}
